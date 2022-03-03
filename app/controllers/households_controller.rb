class HouseholdsController < ApplicationController

  def show
    @household = Household.find(params[:id])
    @orders = Order.where("end_date > ? AND household_id = ?", Time.now, @household.id)
    @order = Order.new
  end

 def edit
 end

 def update
 end


  def map
  end


private

  def household_params
    params.require(:household).permit(:name, :address, :supermarket)
  end
end
