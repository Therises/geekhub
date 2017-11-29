class Category < ApplicationRecord
	belongs_to :store
	has_many :products, dependent: :destroy
	mount_uploader :image, ImageUploader
end
