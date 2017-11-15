class Store < ApplicationRecord
	has_many :categories, dependent: :destroy
	mount_uploader :image, ImageUploader
end
