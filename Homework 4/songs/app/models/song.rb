class Song < ApplicationRecord
  validates :artist, presence: true
  validates :title, presence: true
end
