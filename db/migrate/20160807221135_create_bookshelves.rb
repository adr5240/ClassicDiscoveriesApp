class CreateBookshelves < ActiveRecord::Migration
  def change
    create_table :bookshelves do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
    end

    add_index :bookshelves, :title
    add_index :bookshelves, :user_id, unique: [:user_id, :title]
  end
end
