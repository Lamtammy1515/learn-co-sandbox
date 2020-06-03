class User < ActiveRecord::Base
  has_secure_password
  validates :name, :email, :password, presence: true
  validates_uniqueness_of :name
  has_many :reviews
end
