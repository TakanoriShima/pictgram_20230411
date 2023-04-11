class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  
  include ApplicationHelper
  include ProfilesHelper
  def required_logged_in
    unless logged_in?
      redirect_to root_path
    end
  end
end
