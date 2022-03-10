class ListsController < ApplicationController

  def index
    @lists = List.all
    @list = List.new
    @orders = Order.where(household_id: current_user.household_id)
    @lists_by_created = List.where(user_id: params[:user_id]).sort_by(&:created_at).reverse!
  end

  def show
    @user = current_user
    @list = List.find(params[:id])
    @item = Item.new
    @items_category= @list.items.sort_by(&:category)
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    @list.order = Order.find(params[:list][:order_id])
    if @list.save
      redirect_to user_list_path(current_user, @list)
    else
      render :index
    end
  end

  def new
    @list = List.new
  end

  def update
  end

private

def list_params
  params.require(:list).permit(:title, :description, :price)
end

end
