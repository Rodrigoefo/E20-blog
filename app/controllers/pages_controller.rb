class PagesController < ApplicationController


  def index
    @users = User.order(:created_at)
    authorize! :manage, @pages

  end

def update
authorize! :update, @pages
 @user = User.find(params[:id])
  if @user.visit?
    @user.admin!
  else
    @user.visit!
  end
  redirect_to pages_path

end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to pages_path

end


end
