class Api::ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)

    if @review.save
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end

  end

  def review_params
    params.require(:review).permit(:user_id, :book_id, :body, :rating)
  end

end
