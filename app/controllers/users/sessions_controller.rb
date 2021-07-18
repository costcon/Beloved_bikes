# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :reject_inactive_user, only: [:create]

  def reject_inactive_user
    @user = User.find_by(email: params[:user][:email])
    if @user
      if (@user.valid_password?(params[:user][:password]) && (@user.active_for_authentication? == false))
        flash[:error] = "退会済みのアカウントです。"
        redirect_to new_user_session_path
      end
    end
  end

  # ユーザー承認済かどうかの確認
  def active_for_authentication?
    if current_user.approval == "未対応"
      redirect_to request.referer, danger: "まだ承認されていないアカウントです"
    elsif current_user.approval == "非承認"
      redirect_to request.referer, danger: "許可されていないアカウントです。再度ユーザー登録をお願い致します。"
    end
  end


  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
