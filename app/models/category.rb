class Category < ApplicationRecord
	
	include FriendlyId
	friendly_id :description, use: :slugged

	has_many :books

	validates_presence_of :decsription

	scope :oerder_by_description, -> { order(:decsription) }
end
