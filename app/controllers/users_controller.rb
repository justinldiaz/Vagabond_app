class UsersController < ApplicationController

	before_action :logged_in?, only: [:show, :edit, :index]

	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
		   login(@user)
		   redirect_to user_path @user
		else
		   redirect_to sign_up_path
		end
	end


	def show
		@user = User.find(params[:id])
		@posts = @user.posts
	end

	def edit
	end

	private

	def user_params
		params.require(:user).permit(:id, :first_name, :last_name, :email, :password)
	end

	
end
