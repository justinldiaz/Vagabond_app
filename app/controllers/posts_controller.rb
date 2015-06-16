class PostsController < ApplicationController

	# posts GET    /posts(.:format)          posts#index
	def index
		@posts = Post.all
		render :index
	end

	# new_post GET    /posts/new(.:format)      posts#new
	def new
		#@user = User.find(params[:id])
		@post = Post.new
		render :new
	end

	# POST   /posts(.:format)          posts#create
	def create
		
		@post = current_user.posts.create(post_params)
		# Couldn't find User with 'id'=
		
		redirect_to "/posts/#{@post.id}"

	end

	# post GET    /posts/:id(.:format)      posts#show
	def show
		#@user = User.find(params[:id])
		@post = Post.find(params[:id])
	end

	# edit_post GET    /posts/:id/edit(.:format) posts#edit
	def edit
		# @user = User.find(params[:id])
		@post = Post.find(params[:id])
		render :edit
	end

	# PUT    /posts/:id(.:format)      posts#update
	def update
		# @user = User.find params[:user_id]
    	@post = Post.find params[:id]
    	if @post.update(post_params) 
      		redirect_to "/posts/#{@post.id}"
    	else
      		@errors = @post.errors.messages
    	end
	end

	# DELETE /posts/:id(.:format)      posts#destroy
	# doesnt need a user for reference, deletes based on article param
	def destroy
    	post = Post.find params[:id]
    	post.destroy
    	redirect_to user_path(current_user.id)
	end

	#stored these params here for easy reuse
	private
	def post_params
		params.require(:post).permit(:id, :user_id, :title, :content)
	end

end
