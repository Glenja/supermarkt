class HouseholdsController < ApplicationController

  def show
    @users = User.all
    @household = Household.find(params[:id])
    @housemates = Housemate.where(household_id: @household.id)
    @household = current_user.household
    @orders = Order.where("end_date > ? AND household_id = ?", Time.now, @household.id)
    @order = Order.new
  end


  def new
    @household = Household.new
    # @housemate = Housemate.find(params[:housemate_id])
  end

  def create
    @household = Household.new(household_params)
    current_user.household = @household
    @new_housemate_ids = household_params[:housemate_ids].shift
    @housemate = Housemate.find(@new_housemate_ids)
    @household.housemates << @housemate
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
    @household = Household.find(params[:household_id])
    households = Household.all.geocoded.map do |household|
      {
        lat: household.latitude,
        lng: household.longitude,
        info_window: render_to_string(partial: "info_window", locals: { location: household }),
        id: household.id
      }
    end
    @marker = households.select { |household| household[:id] == @household.id }
    @markers = Supermarket.all.geocoded.map do |supermarket|
      {
        lat: supermarket.latitude,
        lng: supermarket.longitude,
        info_window: render_to_string(partial: "info_window", locals: { location: supermarket })
      }
    end
  end

  def route
    @household = Household.find(params[:household_id])
    @supermarket = Supermarket.find(params[:id])
    households = Household.all.geocoded.map do |household|
      {
        lat: household.latitude,
        lng: household.longitude,
        info_window: render_to_string(partial: "info_window", locals: { location: household }),
        id: household.id
      }
    end
    @marker = households.select { |household| household[:id] == @household.id }
    supermarkets = Supermarket.all.geocoded.map do |supermarket|
      {
        lat: supermarket.latitude,
        lng: supermarket.longitude,
        info_window: render_to_string(partial: "info_window", locals: { location: supermarket }),
        id: supermarket.id
      }
    end
    @markers = supermarkets.select { |supermarket| supermarket[:id] == @supermarket.id }
  end

  private

  def household_params
    params.require(:household).permit(:name, :address, :supermarket, :housemate_ids => [])
  end
end
