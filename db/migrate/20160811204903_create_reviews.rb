class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :book_id, null: false
      t.integer :rating, null: false
      t.datetime :date, null: false

      t.timestamps null: false
    end

    add_index :reviews, :user_id
    add_index :reviews, :book_id
    add_index :reviews, [:user_id, :book_id], unique: true
  end
end
