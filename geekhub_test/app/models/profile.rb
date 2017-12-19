class Profile < ApplicationRecord
	belongs_to :users_profile, polymorphic: true
	mount_uploader :avatar, AvatarUploader
end
