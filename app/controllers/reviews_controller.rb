class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to request.referer
  end

  def update
  end
  
  def review_params
    # []は中間テーブルの場合必ずつけておく
    params.require(:review).permit([:reviewer_id, :reviewed_id, :evaluation, :review_comment])
  end

end
