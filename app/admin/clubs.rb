ActiveAdmin.register Club do

	index do
		column :name
		column :image
		column :location
		#column :timing
		#column :capacity
		column :phone
		column :email
		column :url
		#column :manager
		#column :about
		
		default_actions
	end


  
end
