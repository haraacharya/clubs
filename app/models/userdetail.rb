class Userdetail < ActiveRecord::Base

	belongs_to :user
	attr_accessible :firstname, :lastname, :gender, :image, :birthyear, :city, :country, :zipcode

	mount_uploader :image, UserimageUploader
	validates :firstname, :lastname, :gender, :image, presence: true

end