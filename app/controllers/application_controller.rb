# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  before_action :configure_permitted_parameters, if: :devise_controller?

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

  def configure_permitted_parameters
    added_attrs = %i[email password password_confirmation nickname name remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: %i[email password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def render_not_found
    render json: { error: 'Record not found' }, status: :not_found
  end
end
