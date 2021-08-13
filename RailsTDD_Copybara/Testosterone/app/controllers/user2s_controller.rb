class User2sController < ApplicationController
  def new
  end

  def create
    @user2 = User2.new(userparams)
    if @user2.save
      flash[:notice] = ["User successfully created"]
    else
      flash[:notice] = ['User not created']
    end
    redirect_to new_user2s_path
  end


  private
  def userparams
    params.require(:user2).permit(:fname,:email)
  end

end
