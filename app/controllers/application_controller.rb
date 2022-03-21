# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit::Authorization

  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def current_cart
    @current_cart ||= Cart.find_or_create_by(user: current_user)
  end

  delegate :cart_items, to: :current_cart

  helper_method :current_cart, :cart_items

  rescue_from Pundit::NotAuthorizedError, with: :not_authorized

  private

  def not_authorized
    flash[:alert] = if current_user
                      'You must be an administrator to access this page'
                    else
                      'You need to sign in or sign up before continuing'
                    end
    redirect_to main_app.root_path
  end

  protected

  def render_not_found
    render json: { error: 'Record not found' }, status: :not_found
  end
end
