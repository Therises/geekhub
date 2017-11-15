class Ticket < ApplicationRecord
	belongs_to :passenger
	mount_uploader :avatar, AvatarUploader
end
