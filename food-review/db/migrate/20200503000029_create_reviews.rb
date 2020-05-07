class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :restaurant 
      t.integer :star_rating 
      t.string :review 
      t.string :image 
      t.integer :user_id 
    end
  end
end
