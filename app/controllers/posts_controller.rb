class PostsController < ApplicationController

	# posts GET    /posts(.:format)          posts#index
	def index
		@posts = Post.all
		authorize @posts, :index?
		render :index
	end

	# new_post GET    /posts/new(.:format)      posts#new
	def new
		@post = Post.new
		render :new
	end

	# POST   /posts(.:format)          posts#create
	def create
		@post = current_user.posts.new(post_params)
		if @post.save
			redirect_to post_path @post.id
		else 
			flash[:nopost] = @post.errors
			redirect_to new_post_path
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
		render :edit
	end

	def update
    	@post = Post.find params[:id]
    	if @post.update(post_params) 
      		redirect_to "/posts/#{@post.id}"
    	else
      		@errors = @post.errors.messages
    	end
	end

	# DELETE /posts/:id(.:format)      posts#destroy
	def destroy
		session[:return_to] ||= request.referer
    	post = Post.find params[:id]
    	post.destroy
    	redirect_to session.delete(:return_to)
	end

	#stored these params here for easy reuse
	private
	def post_params
		params.require(:post).permit(:id, :user_id, :title, :content, :city_id)
	end

end
