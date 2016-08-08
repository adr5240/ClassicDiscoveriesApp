class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)

      s1 = Bookshelf.create(title: "All", description: "A collection of all your books!", user_id: @user.id)
      s2 = Bookshelf.create(title: "Read", description: "All the books you have read.", user_id: @user.id)
      s3 = Bookshelf.create(title: "Want to Read", description: "All the books you would like to read.", user_id: @user.id)
      s4 = Bookshelf.create(title: "Currently Reading", description: "Books you are currently enjoying", user_id: @user.id)

      @user.bookshelf_ids = [s1.id, s2.id, s3.id, s4.id]

      render 'api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
    end

  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
