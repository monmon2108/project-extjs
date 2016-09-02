class MainController < ApplicationController


  def show
    # p session
    p 'main'

    if session[:username] == nil
      redirect_to '/'
    end
  end

  def logout
    puts 'logout'
    session[:username] = nil
    render :json => {success: true}


  end

end
