class ProfileController < ApplicationController
		before_action :authenticate_user!, only: [:show, :create, :update]
  def show
    @user = User.all.find(params[:id])
  end

  def edit

  	
  end

  def update

  	current_user.update(profile_params)
    
      if current_user.save
        redirect_to profile_path(current_user.id)
      else
        flash.now[:danger] = "Couldn't save."
        render :edit
      end
  	
  end


  def profile_params

	params.require(:user).permit(:first_name, :last_name, :description)
	  
  end

end


