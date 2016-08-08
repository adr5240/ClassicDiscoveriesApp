class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.integer :book_id, null: false
      t.integer :shelf_id, null: false
    end

    add_index :shelves, :book_id
    add_index :shelves, :shelf_id, unique: [:book_id, :shelf_id]
  end
end
