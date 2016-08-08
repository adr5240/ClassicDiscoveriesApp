class Api::BookshelvesController < ApplicationController

  # before_action :require_logged_in, only: [:create, :update, :destroy]

  def index
    @bookshelves = Bookshelf.all
    render :index
  end

  def create
    @bookshelf = Bookshelf.new(bookshelf_params)
    if @bookshelf.save
      render :show
    else
      render json: @bookshelf.errors.full_messages, status: 422
    end

  end

  def update
    @bookshelf = Bookshelf.find(params[:id])

    if params[:bookshelf][:book_id] && params[:bookshelf][:add]
      @bookshelf.addBook(params[:bookshelf][:book_id])
    elsif params[:bookshelf][:book_id]
      @bookshelf.removeBook(params[:bookshelf][:book_id])
    end

    if @bookshelf.update(bookshelf_params)
      render :show
    else
      render json: @bookshelf.errors.full_messages, status: 422
    end

  end

  def destroy
    @bookshelf = Bookshelf.find(params[:id])
    if @bookshelf.destroy
      @bookshelves = Bookshelf.all
      render :index
    else
      render json: @bookshelf.errors.full_messages, status: 422
    end
  end

  def show
    @bookshelf = Bookshelf.find(params[:id])
    render :show
  end

  def bookshelf_params
    params.require(:bookshelf).permit(:title, :user_id, :description)
  end

end
