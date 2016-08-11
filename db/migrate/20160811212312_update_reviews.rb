class UpdateReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :body, :text, null: false
  end
end
