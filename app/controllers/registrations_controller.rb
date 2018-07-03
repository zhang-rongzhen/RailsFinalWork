class RegistrationsController < Devise::RegistrationsController
  
  before_action :configure_permitted_parameters,only: [:update] 

  
  
  
  private
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  
  
  def after_update_path_for(resource)
    edit_user_registration_path(resource)
  end
  
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:account_update, keys: [:nick ,:password,:password_confirmation])
  end
    
    
end