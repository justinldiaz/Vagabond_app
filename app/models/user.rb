class User < ActiveRecord::Base
	has_secure_password
	#validates :password, confirmation: true
	#validates :password_confirmation, presence: true
	before_save { |user| user.email = email.downcase }

	validates :first_name, presence: true, length: { maximum: 25 }
	validates :last_name, presence: true, length: { maximum: 25 }
	validates :password, presence: true, length: { minimum: 6 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
	                uniqueness: { case_sensitive: false, message: "That email has already been taken!" }

	include Gravtastic
	gravtastic
	belongs_to :city
	has_many :posts

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
