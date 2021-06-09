class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success, :info, :warning, :danger

  def after_sign_in_path_for(resource)
    case resource
    when User
      user_path(resource)
    end
  end

  def after_sign_out_path_for(scope)
    case scope
    when :user
      root_path
    end
  end




  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_out, keys: [:email])
  end

  def configure_permitted_parameters
    if resource_class == User
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :license_number, :license_date, :license_expiration, :license_image_1, :license_image_2, :id_deleted])
    end
  end


end
