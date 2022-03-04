class ItemsController < ApplicationController
  def index
  end

  def create
    @list = List.find(params[:list_id])
    @item = Item.new(item_params)
    @item.list = @list
    if @item.save
      redirect_to user_list_path(current_user, @list)
    else
      render 'lists/show'
    end
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity, :aisle, :category, :price, :list, :unit)
  end
end
