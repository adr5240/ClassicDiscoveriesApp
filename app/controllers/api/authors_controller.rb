class Api::AuthorsController < ApplicationController

    def author_params
        params.require(:author).permit(:fname, :lname, :description)
    end

    def create
        @author = Author.new(author_params)

        if @author.save
            render :show
        else
            render json: @author.errors.full_messages, status: 422
        end

    end

    def index
        @authors = Author.all
        render :index
    end

    def show
        @author = Author.find(params[:id])
        render :show
    end

end
