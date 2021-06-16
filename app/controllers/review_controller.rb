class ReviewController < ApplicationController
  def index
  end

  def show
  end

  def create

  end

  def update
  end

  def review_params
    params.require(:review).permit(:reviewer_id, :reviewed_id, :evaluation, :review_comment) # evaluationを追加
  end

end
