class Api::ReviewsController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def create
    review = Review.new(review_params)
    review.date = DateTime.now
    if review.save
      @book = Book.find(review.book_id)
      render '/api/books/show'
    else
      render json: review, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body, :book_id, :user_id)
  end

end
