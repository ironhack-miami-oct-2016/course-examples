class User < ApplicationRecord
  has_many :products

  validates :email, presence: true, uniqueness: true
end
