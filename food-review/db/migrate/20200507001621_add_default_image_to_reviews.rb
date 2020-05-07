class AddDefaultImageToReviews < ActiveRecord::Migration
  def change
    change_column_default :reviews, :image, 'https://image.myanimelist.net/ui/5LYzTBVoS196gvYvw3zjwOR5KlZ6BxGepLrLBY5RGSLMfhVtYU82r1zDptFj63p4'
  end
end
