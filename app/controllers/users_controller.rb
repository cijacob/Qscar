class UsersController < ApplicationController

  def new 
    @user = User.new
  end

  def create 
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      UserMailer.confirm_email(@user).deliver_now
      redirect_to new_user_url
    else
      render 'new'
    end 
  end 

  def confirm
    @user = user.find(params[:id])
    if @user.confirmation_token == params[:toke]

    else 
      
    end 
  end 

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end 

end 