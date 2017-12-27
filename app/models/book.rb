class Book < ApplicationRecord

	# Constants
	QTT_PER_PAGE = 5

	# RatyRate
	ratyrate_reteable 'quality'

	# Associoations
	belongs_to :user
	belongs_to :category

	# Validações
	validates :title, :author, :editor, :qnt_pages, :category, presence: true

	# Scopes
	scope :descending_order, -> (page) { order(created_at: :desc).page(page).per(QTT_PER_PAGE) }
	scope :to_the, -> (user) { where(user: user) }
	scope :by_category, -> (id, page) { where(category: id).page(page).per(QTT_PER_PAGE) }

end
