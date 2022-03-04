class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @current_orders = @orders.select { |order| order.end_date >= Date.today}
    @previous_orders = @orders.select { |order| order.end_date < Date.today}
  end

  def show
    @users = User.where(household_id: @order)
    @order = Order.find(params[:id])
    @lists = List.where(order_id: @order)
    @all_items = []
    @lists.each { |list| @all_items << Item.where(list_id: list) }
    @all_items.flatten!
    # @users.each { |user| @all_items.each {|item| } }
    @all_items_by_user = @all_items.group_by { |item| item.list.user }
    @items_category = @all_items.sort_by(&:category)
    @items_az = @all_items.sort_by(&:name)
    @items_za = @all_items.sort_by(&:name).reverse
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @household = Household.find(params[:household_id])
    @order.household = @household

    if @order.save
      redirect_to user_lists_path(current_user)
    else
      render 'households/show'
    end
  end

  def order_params
    params.require(:order).permit(:end_date)
  end
end
