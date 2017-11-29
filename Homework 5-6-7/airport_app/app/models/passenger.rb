class Passenger < ApplicationRecord
	has_many :tickets, dependent: :destroy
	belongs_to :plane
	mount_uploader :avatar, AvatarUploader
end
