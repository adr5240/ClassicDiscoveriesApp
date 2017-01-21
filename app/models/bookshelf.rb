# == Schema Information
#
# Table name: bookshelves
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  title       :string           not null
#  description :string
#

class Bookshelf < ActiveRecord::Base
    validates :user_id, :title, presence: true
    validates :title, uniqueness: { scope: :user_id }

    belongs_to(
        :user,
        class_name: 'User',
        primary_key: :id,
        foreign_key: :user_id
    )

    has_many(
        :books,
        through: :shelves,
        source: :books
    )

    has_many(
        :shelves,
        dependent: :destroy,
        class_name: 'Shelf',
        primary_key: :id,
        foreign_key: :shelf_id
    )

    def addBook(book_id)
        currentBooks = self.book_ids
        self.book_ids = currentBooks.concat([book_id])
    end

    def removeBook(book_id)
        self.books.delete(Book.find(book_id))
    end

end
