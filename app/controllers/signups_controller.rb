class SignupsController < ApplicationController

  def new
    @signup = Signup.new
    @on_signup = true
  end

  def create
    @on_signup = true
    @signup = Signup.new params[:signup]
    if @signup.save
      redirect_to signup_confirmed_path
    else
      render :new
    end
  end


end
