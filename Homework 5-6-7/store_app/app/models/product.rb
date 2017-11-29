class Product < ApplicationRecord
	belongs_to :category
	has_many :suppliers, dependent: :destroy
	mount_uploader :image, ImageUploader
end
