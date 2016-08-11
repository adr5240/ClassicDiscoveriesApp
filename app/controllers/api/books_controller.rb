class Api::BooksController < ApplicationController

  before_action :require_logged_in, only: [:create, :update, :destroy]

  def index
    @books = Book.all
    render :index
  end

  def show
    @book = Book.find(params[:id])
    render :show
  end

  def create
    author = Author.find_by(fname: params[:author][:fname], lname: params[:author][:lname]) ||
             Author.create!(fname: params[:author][:fname], lname: params[:author][:lname], description: params[:author][:description])

    params[:book][:author_id] = author.id
    if params[:book][:book_cover] == 'null'
      params[:book][:book_cover] = File.open('app/assets/images/book_covers/defbookcover.jpg')
    end

    @book = Book.new(book_params)

    if @book.save
      render :show
    else
      render json: @book.errors.full_messages, status: 422
    end

  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      render :show
    else
      render json: @book.errors.full_messages, status: 422
    end

  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      @books = Book.all
      render :index
    else
      render json: book.errors.full_messages, status: 422
    end

  end

  def book_params
    params.require(:book).permit(:title, :description, :author_id, :book_cover)
  end

  def author_params
    params.require(:author).permit(:name, :description)
  end

end
