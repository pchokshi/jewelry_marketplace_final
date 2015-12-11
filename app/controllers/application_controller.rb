class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

def after_sign_in_path_for(resource)
    if resource.class == Designer
         "/designers/#{@designer.id}"
    elsif resource.class == User
        "/users/#{@user.id}/rec"
    end
end

def after_update_path_for(resource)
    if resource.class == Designer
         "/designers/#{@designer.id}"
    elsif resource.class == User
        "/users/#{@user.id}"
    end
end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :city
    devise_parameter_sanitizer.for(:sign_up) << :dob
    devise_parameter_sanitizer.for(:sign_up) << :everyday
    devise_parameter_sanitizer.for(:sign_up) << :night
    devise_parameter_sanitizer.for(:sign_up) << :work
    devise_parameter_sanitizer.for(:sign_up) << :necklace_style_1
    devise_parameter_sanitizer.for(:sign_up) << :necklace_style_2
    devise_parameter_sanitizer.for(:sign_up) << :necklace_style_3
    devise_parameter_sanitizer.for(:sign_up) << :necklace_style_4
    devise_parameter_sanitizer.for(:sign_up) << :silver
    devise_parameter_sanitizer.for(:sign_up) << :gold

    devise_parameter_sanitizer.for(:account_update) << :city
    devise_parameter_sanitizer.for(:account_update) << :everyday
    devise_parameter_sanitizer.for(:account_update) << :night
    devise_parameter_sanitizer.for(:account_update) << :work
    devise_parameter_sanitizer.for(:account_update) << :necklace_style_1
    devise_parameter_sanitizer.for(:account_update) << :necklace_style_2
    devise_parameter_sanitizer.for(:account_update) << :necklace_style_3
    devise_parameter_sanitizer.for(:account_update) << :necklace_style_4
    devise_parameter_sanitizer.for(:account_update) << :silver
    devise_parameter_sanitizer.for(:account_update) << :gold
  end

end
