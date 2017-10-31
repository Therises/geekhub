class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :age, presence: true
  validates :email, presence: true
end
