class RegistrationsController < ApplicationController
	def new
	
	end

	def create
    user = User.new(registration_params)
    if user.save
		  flash[:notice] = "Registration succeeded"
      redirect_to root_path
    else
      flash[:notice] = "Registration failed"
      redirect_to registrations_path
    end

    #complete this method
  end
  def registration_params
    params.require(:registrations).permit(:name, :last_name, :email, :password, :phone)
  end

end
