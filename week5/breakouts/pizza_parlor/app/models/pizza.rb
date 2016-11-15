class Pizza < ApplicationRecord
  belongs_to :order
  has_many :toppings
end
