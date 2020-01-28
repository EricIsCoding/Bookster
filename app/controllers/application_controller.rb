class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 

    private

    def record_not_found
      flash[:alert] = "That url does not exist. Please try better next time."
      redirect_to root_path
    end

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
    end
end
