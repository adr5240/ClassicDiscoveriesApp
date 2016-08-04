class Api::AuthorsController < ApplicationController

  def create
    @author = Author.new(author_params)

    if @author.save
      render json: 'api/authors/show'
    else
      render json: @author.errors.full_messages, status: 422
    end

  end

  def show
    @author = Author.find(params[:id])
    render json: 'api/authors/show'
  end

  def author_params
    params.require(:author).permit(:fname, :lname, :description)
  end

end
