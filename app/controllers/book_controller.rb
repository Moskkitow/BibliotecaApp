class BookController < ApplicationController

	before_action :set_book, only: [:edit, :update]
	
	belongs_to :user
	belongs_to :category

	def index
		@books = Book.to_the(current_user)
	end

	def update

		if @book.update
			
		end
	end

	def new
		@book = Book.new
	end

	private
		def set_book
			@book = Book.find(params[:id])
		end

		def params_book
			params.require(:book).permit(:id, :title, :author, :editor, :qnt_pages)
		end
end
