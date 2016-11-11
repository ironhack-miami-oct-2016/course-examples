class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :amount, numericality: true
end
