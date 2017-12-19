class User < ApplicationRecord


	has_one :profile, as: :users_profile, dependent: :destroy
	after_create :init_profile

	def init_profile
		self.create_profile!
	end

  accepts_nested_attributes_for :profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  def self.create_auto_password(prms={})
    generated_password = Devise.friendly_token.first(8)
    user = self.create(prms.merge(password: generated_password, password_confirmation: generated_password))

    AppMailer.sample_email(user, generated_password).deliver
	end

end
