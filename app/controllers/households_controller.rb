class HouseholdsController < ApplicationController

  def show
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
    params.require(:household).permit(:name, :address)
  end
end
