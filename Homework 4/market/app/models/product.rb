class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :qty, presence: true
end
