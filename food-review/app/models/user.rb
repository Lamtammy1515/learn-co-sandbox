class User < ActiveRecord::Base
  has_secure_password
  validates :name, :email, presence: true
  validates_uniqueness_of :name
  has_many :reviews
end
