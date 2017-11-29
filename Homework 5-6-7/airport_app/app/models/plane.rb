class Plane < ApplicationRecord
	has_many :passengers, dependent: :destroy
	belongs_to :airport
	mount_uploader :avatar, AvatarUploader
end
