class TimestampdataController < ApplicationController


  def index
    p params[:datefrom_search]
    p params[:dateto_search]

    @timestampdata = WorkTime.search(params[:datefrom_search],params[:dateto_search],session[:username])
    p @timestampdata
    render :json => {timestampdata: @timestampdata}

  end

end
