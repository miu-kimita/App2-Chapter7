class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    post_images_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

Refile.secret_key = '45dc193b74bf5f99e6fa719576c0fb63ae526f3e6c04dd16f0fe6caa65d4a9b43b2853d58da926a72041970679d61f8e8d3212834bfb98386e8a2828fd6dd92c'