class OrdersController < ApplicationController
  def index
    @household = Household.find(params[:household_id])
    @housemates = Housemate.where(household_id: @household.id)
    @orders = Order.all
    @current_orders = @orders.select { |order| order.end_date >= Date.today}
    @previous_orders = @orders.select { |order| order.end_date < Date.today}
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
    @household = Household.find(@order.household.id)
    @users = User.where(household_id: @order)
    @lists = List.where(order_id: @order)
    @all_items = []
    @lists.each { |list| @all_items << Item.where(list_id: list) }
    @all_items.flatten!
    @all_items.each { |item| item.name.capitalize! }
    # @users.each { |user| @all_items.each {|item| } }
    @all_items_by_user = @all_items.group_by { |item| item.list.user }
    @items_category = filter_done_false(@all_items.sort_by(&:category))
    @items_az = filter_done_false(@all_items.sort_by(&:name))
    @items_za = filter_done_false(@all_items.sort_by(&:name).reverse)
    @done_items = filter_done_true(@all_items)
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

  def filter_done_false(list)
    list.select { |item| item.done? == false}
  end

  def filter_done_true(list)
    list.select { |item| item.done?}
  end
end
