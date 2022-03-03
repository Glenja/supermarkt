class HouseholdsController < ApplicationController

  def show
    @household = Household.find(params[:id])
    @orders = Order.where("end_date > ? AND household_id = ?", Time.now, @household.id)
    @order = Order.new
  end


  def new
    @household = Household.new
  end

  def create
    @household = Household.new(household_params)
    current_user.household = @household
    if @household.save
      current_user.save
      redirect_to household_path(@household)
    else
      render :new
    end
  end

 def edit
  @household = Household.find(params[:id])
 end

 def update
    @household = Household.find(params[:id])
    if @household.update(household_params)
      @household.save
      redirect_to household_path(@household)
    else
      render :edit
    end
 end


  def map
  end


private

  def household_params
    params.require(:household).permit(:name, :address, :supermarket)
  end
end
