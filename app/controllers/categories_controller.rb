class CategoriesController < ApplicationController
	def show
		@categories = Category.orders_by_description
		@category = Category.friendly.find(params[:id])
		@books = Book.by_category(@category, params[:page])
	end
end
