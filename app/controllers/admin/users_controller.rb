class Admin::UsersController < ApplicationController


  def index
    @users = User.all.page(params[:page]).per(20)
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      if @user.approval =="承認済"
        NotificationMailer.user_approval(@user).deliver_now
        redirect_to request.referer, success: "ユーザーリクエストを承認しました"
      elsif @user.approval ==""
        NotificationMailer.user_disapproval(@user).deliver_now
        redirect_to request.referer, success: "ユーザーリクエストをブロックしました"
      end
    else
      flash.now[:danger] = '更新に失敗しました。'
      render :show
    end
  end


  private

  def user_params
    params.require(:user).permit(
      :nickname,
      :profile_image,
      :last_name,
      :last_name_kana,
      :first_name,
      :first_name_kana,
      :postal_code,
      :address,
      :telephone_number,
      :profile_comment,
      :email,
      :license_number,
      :license_date,
      :license_expiration,
      :license_front_image,
      :license_back_image,
      :approval,
      :id_deleted)
  end

end
