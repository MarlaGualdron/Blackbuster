class RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    def create
      build_resource(sign_up_params)
  
      resource.save
      render_resource(resource)
    end

    def render_resource(resource, _opts = {})
    render json: resource
    end
  end
