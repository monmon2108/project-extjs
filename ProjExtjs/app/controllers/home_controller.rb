class HomeController < ApplicationController

  def index
    puts 'login'
    if session[:username]
      redirect_to '/main'

    else

    end

  end

  def login
    if params[:username] == 'admin' && params[:password] == '1234'
      session[:username] = params[:username]
      render :json => {success: true}

    else
      render :json => {success: false}

    end
  end




end
