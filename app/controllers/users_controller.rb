class UsersController < ApplicationController
  before_action :authenticate_user!


  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @review = Review.create
    @reviews = Review.where(reviewed_id: @user)
    if @reviews.blank?
      @average_review = 0
    else
      @average_review = @reviews.average(:evaluation).round(1)
    end
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

  def unsubscribe
    @user = User.find(params[:id])
  end

  def withdraw
    @user = User.find(params[:id])
    @user.update(id_deleted: true)
    reset_session
    redirect_to root_path
  end



  private

  def user_params
    params.require(:user).permit(
      :profile_image,
      :last_name,
      :last_name_kana,
      :first_name,
      :first_name_kana,
      :nickname,
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
      :id_deleted
    )
  end

end
