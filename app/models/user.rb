class User < ActiveRecord::Base
	has_secure_password
	include Gravtastic
	gravtastic
	belongs_to :city
	has_many :posts

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
