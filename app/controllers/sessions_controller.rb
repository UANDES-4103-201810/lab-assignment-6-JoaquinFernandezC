class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: session_params[:email])
		if user
			cookies[:user_id] = user.id
			flash[:notice] = "Login success"
			redirect_to user_path(user.id)
		else
			flash[:notice] = "Login failed"
			redirect_to root_path
		end
		#complete this method
	end

	def destroy
		#complete this method
		session[:user_id] = nil
		redirect_to root_path

	end
	def session_params
		params.require(:session).permit(:email, :password)
	end
end
