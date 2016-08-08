class UpdateAuthorsMidname < ActiveRecord::Migration
  def change
    remove_column :authors, :mid_name
  end
end
