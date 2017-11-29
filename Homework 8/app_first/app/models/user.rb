class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# CarrierWave 
	mount_uploader :avatar, AvatarUploader

	# will_paginate
  self.per_page = 4
end
