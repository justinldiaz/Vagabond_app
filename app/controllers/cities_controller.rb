class CitiesController < ApplicationController
	def index
		@cities = City.all
		render :index
	end

	def show 
		@city = City.find(params[:id])
		@cityposts = @city.posts
	end
end
