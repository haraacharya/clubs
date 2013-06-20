ActiveAdmin.register Userdetail do

	index do
    	column :user
        column :firstname
        column :lastname
        column :gender
        column :image
        column :birthyear
        column :city
        column :country
        column :zipcode
		
		default_actions
	end


  
end
