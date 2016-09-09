class MainController < ApplicationController


  def show
    # p session
    p 'main'
    p session[:username]
    p session[:password]

    if session[:username] == nil
      redirect_to '/'
    else
      @username = session[:username]
      @password = session[:password]
      @user = Employee.searchuser(@username,@password)[0]

    end


  end

  def logout
    puts 'logout'
    session[:username] = nil
    render :json => {success: true}


  end

  def timein
    puts params

    @username = session[:username]
    @password = session[:password]
    @user = Employee.searchuser(@username,@password)[0]
    @worktimes = WorkTime.searchbydateandemployee(params[:date],@user.id)



    if @worktimes.size == 0
      @work_time = WorkTime.new
      @work_time.date = params[:date]
      @work_time.timein = params[:time]
      @work_time.employee_id = @user.id

      if @work_time.save
        render :json => {success: true}
      else
        render :json => {success: false}
      end
    else
      render :json => {success: false}
    end

  end

  def timeout
    @date = params[:date]
    @username = session[:username]
    @password = session[:password]
    @user = Employee.searchuser(@username,@password)[0]
    @employee_id = @user.id
    @work_time_current = WorkTime.searchbydateandemployee(@date,@employee_id)[0]
    @work_time = WorkTime.find(@work_time_current.id)
    @work_time.timeout = params[:time]
    if @work_time.save
      render :json => {success: true}
    else
      render :json => {success: false}
    end
  end

  def search
    @startdate = params[:start_date]
    @enddate = params[:end_date]
    p @startdate
    p @enddate
    render :json => {success: true}

  end

end
