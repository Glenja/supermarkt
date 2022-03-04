class ListsController < ApplicationController



  def index
    @lists = List.all
    @list = List.new
    @orders = Order.where(household_id: current_user.household_id)
  end

  def show
    @user = current_user

    @list = List.find(params[:id])
    @item = Item.new
  end

  def create
    @list = List.new
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



end
