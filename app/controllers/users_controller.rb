class UsersController < ApplicationController
protect_from_forgery with: :null_session
before_action :authenticate_user!



  def index
  	@users = User.all
  end

  

  
  def show
  	@user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to '/admindashboard', notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:paid, :flag, :subscriptiontype , :discountcode)
    end

end

