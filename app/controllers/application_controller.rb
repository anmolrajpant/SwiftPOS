class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|  
   flash[:error] = "Access denied."  
   redirect_to root_url  
  end
  include PublicActivity::StoreController
end
