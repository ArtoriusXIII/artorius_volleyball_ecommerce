class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:account_update) << :username
   
  end
  
  before_action :find_categories
  
  def initialize_cart
    @cart = Cart.build_from_hash session
  end
  
  def find_categories
    @categories = Category.all
  end
  
  def authenticate_admin!
    authenticate_user!
    
    unless current_user.admin?
      redirect_to root_path, alert: "I'm sorry but action not allowed!."
    end
    
  end
  
end
