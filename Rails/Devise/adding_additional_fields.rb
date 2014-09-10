In "application_controller.rb" add

protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :business_name, :city, :region, :phone, :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :business_name, :city, :region, :phone, :email, :password, :password_confirmation, :current_password) }
    end
