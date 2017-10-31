class Dog < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :breed, presence: true, length: { minimum: 5 }
end
