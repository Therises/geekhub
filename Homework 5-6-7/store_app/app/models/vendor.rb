class Vendor < ApplicationRecord
	belongs_to :supplier
	mount_uploader :image, ImageUploader
end
