class Emp < ActiveRecord::Migration[5.1]
  def change
  	create_table :emp do |t|
	  	t.references :user
	  	t.references :book

	  	t.date :date_emp
	  	t.date :date_dev
	end
  end
end
