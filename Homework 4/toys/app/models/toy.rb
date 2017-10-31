class Toy < ApplicationRecord
  validates :name, presence: true
  validates :qty, presence: true
end
