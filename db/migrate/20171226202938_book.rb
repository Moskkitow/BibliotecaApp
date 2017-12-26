class Book < ActiveRecord::Migration[5.1]
  def change
  	create_table :book do |t|
	  	t.string :title
	  	t.string :author
	  	t.string :editor

	  	t.integer :qnt_pages
	end  		  
  end
end
