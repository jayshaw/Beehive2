class LoginsController < ApplicationController
  def new
  end
  
  def create
    employer = Employer.find_by_email(params[:email])
    if employer && employer.authenticate(params[:password])
      session[:employer_id] = employer.id # <-- a "log in" by authenticating and setting a session variable.
      redirect_to :jobs
    else
      #raise "Login Failed."
      flash[:notice] = "Login failed, please try again."
      redirect_to :new_login
    end
  end
  
  def destroy
    session[:employer_id] = nil
    redirect_to(:root)
  end
end