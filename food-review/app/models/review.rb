class Review < ActiveRecord::Base
  validates_presence_of :title, :review 
  belongs_to :user
end
