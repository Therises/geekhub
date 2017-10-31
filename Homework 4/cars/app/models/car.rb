class Car < ApplicationRecord
  validates :manufacturer, presence: true
  validates :model, presence: true
  validates :yop, presence: true
end
