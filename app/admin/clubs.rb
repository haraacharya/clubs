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

	form do |f|                         
	    f.inputs "Club Details" do 
	    	f.input :name
	    	f.input :image
	    	f.input :about, as: :html_editor 
	    	f.input :location
	    	f.input :timing
	    	f.input :capacity
	    	f.input :phone
	    	f.input :email
	    	f.input :url
	    	f.input :manager
	    	 
	    end                               
	    f.actions                         
  	end
  
end
