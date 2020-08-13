class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, length: { minimum: 4 }
end
