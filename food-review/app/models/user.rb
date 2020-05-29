class User < ActiveRecord::Base
  validates :name, :email, :password, presence: true
  validates_uniqueness_of :name
  has_many :reviews
end
