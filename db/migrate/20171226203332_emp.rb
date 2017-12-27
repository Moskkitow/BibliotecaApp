class Emp < ActiveRecord::Migration[5.1]
  def change
  	create_table :emp do |t|
	  	t.references :user, foreign_key: true
	  	t.references :book, foreign_key: true

	  	t.date :date_emp
	  	t.date :date_dev
	end
  end
end
