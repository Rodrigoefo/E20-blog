class PagesController < ApplicationController
  

  def index
    @users = User.all
  end

def update
 @user = User.find(params[:id])
  if @user.visit?
    @user.admin!
  else
    @user.visit!
  end
  redirect_to pages_path

end

end
