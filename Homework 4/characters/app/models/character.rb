class Character < ApplicationRecord
  validates :name, presence: true
  validates :role, presence: true
end
