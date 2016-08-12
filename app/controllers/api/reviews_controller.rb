class Api::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render :index
  end

  def create
    params[:review][:date] = DateTime.now
    @review = Review.new(review_params)

    if @review.save
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end

  end

  def review_params
    params.require(:review).permit(:user_id, :book_id, :body, :rating, :date)
  end

end
