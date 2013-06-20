class MainController < ApplicationController
  
  def index
  	if user_signed_in?
		if current_user.userdetail.nil? 
		   @userdetail = Userdetail.new
           redirect_to new_userdetail_path
        else
        	@clubs = Club.order('created_at DESC').all
		end
	else
		@clubs = Club.order('created_at DESC').all
	end	
  end
end