class TimestampdataController < ApplicationController


  def index
    render :json => {timestampdata: [
      {date: 'abc',
      name: 'monmon',
      time_in: '000',
      time_out: '1111'}
      ]}

  end

end
