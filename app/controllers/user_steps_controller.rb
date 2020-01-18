class UserStepsController < ApplicationController
	layout 'sup'
	include Wicked::Wizard
  	steps :user_info, :kids_info, :whatto_know

  	def show
    @user = current_user
    render_wizard
  	end
  
	def update
	   @user = current_user
	   @user.update_attributes(user_params)
	   render_wizard @user
	end
  
private

 def user_params
 	if params[:user][:hobsintrst] != nil
       params[:user][:hobsintrst] = params[:user][:hobsintrst].join(',')
    end
    if params[:user][:wdtwtoknow] != nil
       params[:user][:wdtwtoknow] = params[:user][:wdtwtoknow].join(',')
    end
    if params[:user][:parentalfears] != nil
       params[:user][:parentalfears] = params[:user][:parentalfears].join(',')
    end 
    params.require(:user)
          .permit(:name, :gender, :hobsintrst, :country, :profileimage,
    									 :agerangekids, :numofchildren, :industryworkin, :wdtwtoknow, :parentalfears) 
  end

  
  def finish_wizard_path
  thankyou_path
  end

end
