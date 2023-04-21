# frozen_string_literal: true

class ApplicationController < ActionController::Base
    protect_from_forgery prepend: true
    before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    
    def not_found
      render json: { error: 'Record not found' }, status: :not_found
    end

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name])
    end

end
