class ApplicationController < ActionController::Base
  include ActionController::Caching::Pages
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  caches_page :index

  def index
    # check if logged in
  end

  rescue_from CanCan::AccessDenied do | exception |
    flash[:error] = exception.message
    redirect_to root_url
  end

  def current_cart
    Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
  end
  helper_method :current_cart
end
