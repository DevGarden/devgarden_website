class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  around_filter :thread_locals


  protected
    def admin_user!
      current_user && current_user.admin?
    end

    def thread_locals
      Thread.current[:current_user] = current_user
      yield
    ensure 
      Thread.current[:current_user] = nil
    end

    def configure_permitted_parameters
      # Only add some parameters
      devise_parameter_sanitizer.for(:accept_invitation).concat [:first_name, :last_name, :phone]
      # Override accepted parameters
      devise_parameter_sanitizer.for(:accept_invitation) do |u|
        u.permit(:first_name, :last_name, :phone, :password, :password_confirmation,
                 :invitation_token)
      end
    end  


end
