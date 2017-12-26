class BookController < ApplicationController
	
	belongs_to :user
	belongs_to :category

	def new

	end
end
