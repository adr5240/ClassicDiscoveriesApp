class UpdateBookshelves < ActiveRecord::Migration
  def change
    add_column :bookshelves, :description, :string
  end
end
