class AddCityToPost < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  		t.references :city, index: true, foreign_key: true 
  	end
  end
end
