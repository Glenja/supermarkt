class HousematesController < ApplicationController
  def edit
    @housemate = Housemate.find(params[:id])
  end

  def update
    # @housemate = Housemate.find(params[:id])
    # @household = Household.find(params[:household_id])
    # @household.housemates << @housemate
    # if @housemate.update(housemate_params)
    #   @housemate.save
    #   redirect_to housemate_path(@housemate)
    # end
  end

  private

  def housemate_params
    params.require(:housemate).permit(:user_id, :household_id)
  end
end
