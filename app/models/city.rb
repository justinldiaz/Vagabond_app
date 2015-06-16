class City < ActiveRecord::Base
	has_many :users
	attr_accessor :users
end
