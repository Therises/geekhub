class AdminUser < ApplicationRecord

	has_one :profile, as: :users_profile, dependent: :destroy
	after_create :init_profile

	def init_profile
		self.create_profile!
	end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end
