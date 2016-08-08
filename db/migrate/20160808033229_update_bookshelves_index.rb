class UpdateBookshelvesIndex < ActiveRecord::Migration
  def change
    remove_index :bookshelves, :user_id
    remove_index :shelves, :shelf_id
    add_index :bookshelves, :user_id
    add_index :bookshelves, [:user_id, :title], unique: true
    add_index :shelves, :shelf_id
    add_index :shelves, [:shelf_id, :book_id], unique: true
  end
end
