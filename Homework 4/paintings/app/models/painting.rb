class Painting < ApplicationRecord
  validates :artist, presence: true
  validates :title, presence: true
  validates :year, presence: true
end
