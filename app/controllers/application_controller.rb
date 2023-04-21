# frozen_string_literal: true

class ApplicationController < ActionController::Base
  respond_to :json
  protect_from_forgery prepend: true
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  
  def not_found
    render json: { error: 'Record not found' }, status: :not_found
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:name, :last_name, :admin)
    end
  end
  
  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

  def require_admin
    render json: { message: 'admin only, not authorized' }, status: :unauthorized unless current_user.admin?
  end 
end
