class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :fname, null: false
      t.string :lname, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
    add_index :authors, :fname
    add_index :authors, :lname
    add_index :authors, [:fname, :lname], unique: true
  end
end
