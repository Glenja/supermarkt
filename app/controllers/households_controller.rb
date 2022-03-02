class HouseholdsController < ApplicationController

  def show
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
