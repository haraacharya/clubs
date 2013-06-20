class Club < ActiveRecord::Base

	attr_accessible :name, :image, :location, :timing, :capacity, :phone, :email, :url, :manager, :about

	mount_uploader :image, ClubimageUploader

end
