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
		
		post_params = params.require(:post).permit(:title, :content)
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
		@user = User.find(params[:id])
		@post = Post.find(params[:id])

		render :edit

	# PUT    /posts/:id(.:format)      posts#update
	def update
		@user = User.find params[:user_id]
    	@post = Post.find params[:id]
    	if @post.update_attributes(post_params) 
      		redirect_to # ? user_post_path(@user, @post)
    	else
      		@errors = @post.errors.messages
      	render :edit
    end
	end

	end

	# DELETE /posts/:id(.:format)      posts#destroy
	def destroy
		user = User.find params[:user_id]
    	post = Post.find params[:id]
    	post.destroy
    	redirect_to # ?? user_articles_path(user)
	end

end
