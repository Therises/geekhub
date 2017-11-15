class Supplier < ApplicationRecord
	belongs_to :product
	has_many :vendors, dependent: :destroy
	mount_uploader :image, ImageUploader
end
