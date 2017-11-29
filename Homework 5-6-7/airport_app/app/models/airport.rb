class Airport < ApplicationRecord
	has_many :planes, dependent: :destroy
	belongs_to :city
	mount_uploader :avatar, AvatarUploader
end
