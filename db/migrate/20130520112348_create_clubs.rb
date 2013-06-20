class CreateClubs < ActiveRecord::Migration
  def change
  	create_table :clubs do |t|
  		t.string :name
  		t.string :image
  		t.string :location
  		t.string :timing
  		t.integer :capacity
  		t.string :phone
  		t.string :email
  		t.string :url
  		t.string :manager
  		t.text :about

  		t.timestamps
  	end
  end
end
