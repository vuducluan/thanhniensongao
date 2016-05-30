class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
 	redirect_to root_url
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for :account_update do |u|
      u.permit :name, :email, :position, :birthday, :password, :password_confirmation, :current_password
    end

    devise_parameter_sanitizer.for :sign_up do |u|
      u.permit :name, :email, :position, :birthday, :password, :password_confirmation
    end
  end
end
