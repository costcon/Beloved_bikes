class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_login_user

  def index
  end

  def show
    @user = User.find(params[:id])
    @reviews = Review.where(reviewed_id: @user)
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to request.referer, success: "レビューの投稿が完了しました"
  end

  def update
  end

  def review_params
    # []は中間テーブルの場合必ずつけておく
    params.require(:review).permit([:reviewer_id, :reviewed_id, :evaluation, :review_comment])
  end

end
