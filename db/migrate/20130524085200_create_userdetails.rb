class CreateUserdetails < ActiveRecord::Migration
  
  def change
  	create_table :userdetails do |t|
  		t.integer :user_id
  		t.string :firstname
  		t.string :lastname
  		t.string :gender
  		t.string :image
  		t.integer :birthyear
  		t.string :city
  		t.string :country
  		t.string :zipcode

  		t.timestamps
  	end
  end

end
