class HomeController < ApplicationController

  def index
    puts 'login'


  end

  def login
    if params[:username] == 'admin' && params[:password] == '1234'
      render :json => {success: true}

    else
      render :json => {success: false}

    end
  end


end
