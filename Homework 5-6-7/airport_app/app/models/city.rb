class City < ApplicationRecord
	has_many :airports, dependent: :destroy
	belongs_to :country
	mount_uploader :avatar, AvatarUploader
end
