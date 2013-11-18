class SessionsController < ApplicationController
 def new
 end

  def create
    account = Account.find_by_email(params[:email])
    if account && account.authenticate(params[:password])
      session[:account_id] = account.id
      redirect_to restaurants_url, :notice => "Logged in!"
    else
      render "new"
    end
  end

  def destroy
    session[:account_id] = nil
    redirect_to restaurants_url, :notice => "Logged out!"
  end
end
