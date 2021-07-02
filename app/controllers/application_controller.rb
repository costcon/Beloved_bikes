class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success, :info, :warning, :danger


  protected

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_users_path
    when User
      user_path(resource)
    end
  end

  def after_sign_out_path_for(scope)
    case scope
    when :admin
      new_admin_session_path
    when :user
      root_path
    end
  end

  def check_login_user
    unless current_user.approval == "承認"
      redirect_to request.referer, danger: "先にユーザー認証を済ませてください"
    end
  end




  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
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
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :nickname, :postal_code, :address, :telephone_number, :license_number, :license_date, :license_expiration, :license_front_image, :license_back_image, :approval, :id_deleted])
    end
  end


end
