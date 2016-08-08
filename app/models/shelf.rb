# == Schema Information
#
# Table name: shelves
#
#  id       :integer          not null, primary key
#  book_id  :integer          not null
#  shelf_id :integer          not null
#

class Shelf < ActiveRecord::Base
  validates :book_id, :shelf_id, presence: true
  validates :book_id, uniqueness: { scope: :shelf_id }

  belongs_to(
    :books,
    class_name: 'Book',
    primary_key: :id,
    foreign_key: :book_id
  )

  belongs_to(
    :bookshelves,
    class_name: 'Bookshelf',
    primary_key: :id,
    foreign_key: :shelf_id
  )
end
