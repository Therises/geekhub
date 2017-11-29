class Country < ApplicationRecord
	has_many :cities, dependent: :destroy
	mount_uploader :avatar, AvatarUploader
end
