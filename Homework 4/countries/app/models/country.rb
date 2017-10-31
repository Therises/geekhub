class Country < ApplicationRecord
  validates :name, presence: true
  validates :area, presence: true
end
