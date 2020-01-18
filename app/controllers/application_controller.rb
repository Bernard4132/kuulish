class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :hobsintrst, :country, :profileimage,
    									 :agerangekids, :numofchildren, :industryworkin, :wdtwtoknow, :parentalfears])
    end


  protected

  #  def after_sign_up_path_for(resource)
  #   user_steps_path
  # end
  
end
