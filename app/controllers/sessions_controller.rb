class SessionsController < Devise::SessionsController

	def new
	  layout "login"
	end
  
end