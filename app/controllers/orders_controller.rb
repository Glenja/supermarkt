class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @current_orders = @orders.select { |order| order.end_date >= Date.today}
    @previous_orders = @orders.select { |order| order.end_date < Date.today}
  end

  def show
    @order = Order.find(params[:id])
    @lists = List.where(order_id: @order)
    @all_items = []
    @lists.each { |list| @all_items << Item.where(list_id: list) }
    @all_items.flatten!
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
      redirect_to household_order_path(@household, @order)
    else
      render 'households/show'
    end
  end

  def order_params
    params.require(:order).permit(:end_date)
  end
end
