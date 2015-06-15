class PostsController < ApplicationController

	def index
		@posts = Post.all
		render :index
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		@user = User.find(params[:id])
		post_params = params.require(:post).permit(:title, :content)
		@post = Post.create(post_params)
		redirect_to "/posts/#{@post.id}"

	end

	def show
	end

	def edit
		@user = User.find(params[:id])
		@post = Post.find(params[:id])

		render :edit

	end

end
