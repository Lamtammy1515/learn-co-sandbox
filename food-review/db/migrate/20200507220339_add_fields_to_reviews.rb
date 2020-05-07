class AddFieldsToReviews < ActiveRecord::Migration
  def change
    change_column :reviews, :star_rating, :decimal
    add_column :reviews, :title, :string
    add_column :reviews, :location, :string
  end
end
