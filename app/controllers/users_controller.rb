class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def edit
    @user = User.find(params[:id])
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(params[:id]), success: "更新しました"
    else
      flash.now[:danger] = '作成に失敗しました。'
      render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:nickname, :profile_image, :last_name, :last_name_kana, :first_name, :first_name_kana, :postal_code, :address, :telephone_number, :profile_comment, :email, :license_number, :license_date, :license_expiration, :license_image_1, :license_image_2, :id_deleted)
  end

end
