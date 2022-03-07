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

  def mark_done
    @item = Item.find(params[:id])
    if @item.done?
      @item.update_attribute(:done, false)
    else
      @item.update_attribute(:done, true)
    end
    redirect_to household_order_path(@item.list.order.household, @item.list.order)
  end

  def update
    @item = Item.find (params[:id])
    @item.update(item_params)
    @item.save!
    redirect_to household_order_path(@item.list.order.household, @item.list.order)
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :aisle, :list_id, :quantity, :category, :price, :unit, :done)
  end
end
