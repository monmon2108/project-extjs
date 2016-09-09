class HomeController < ApplicationController

  def index
    puts 'login'
    if session[:username]
      redirect_to '/main'

    else

    end

  end

  def login
    @username = params[:username]
    @password = params[:password]
    @user = Employee.searchuser(@username,@password)[0]
    if @user
      session[:username] = params[:username]
      session[:password] = params[:password]
      p session[:username]
      p session[:password]
      render :json => {success: true}

    else
      render :json => {success: false}

    end
  end




end
