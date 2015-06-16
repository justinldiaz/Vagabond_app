class AddCurrentCityToUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.references :city, index: true, foreign_key: true
  	end
  end
end
