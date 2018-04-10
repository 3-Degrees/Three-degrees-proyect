class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_organization!
  skip_before_action :authenticate_organization!, only: [:index, :show, :organizations, :profile]

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :location, :mission, :avatar])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name, :location, :mission, :avatar])
  end
end
