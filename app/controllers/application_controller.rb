class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_up_path_for(resource)
    edit_household_path
  end

  def default_url_options
    { host: ENV["www.supermarkt.live"] || "localhost:3000" }
  end
end
