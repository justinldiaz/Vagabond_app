class User < ActiveRecord::Base
	has_secure_password
	#validates :password, confirmation: true
	#validates :password_confirmation, presence: true
	validates :email, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true

	include Gravtastic
	gravtastic
	belongs_to :city
	has_many :posts

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
