class UpdateAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :mid_name, :string
  end
end
