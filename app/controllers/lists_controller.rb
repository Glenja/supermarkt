class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @user = current_user
    @list = List.find(params[:id])
    @item = Item.new
  end

  def create
  end

  def new
  end

  def update
  end
end
