class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|   
    redirect_to comments_url, :alert => exception.message  
  end  
end
