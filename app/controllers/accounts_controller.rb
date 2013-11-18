class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to accounts_path :notice => "Your Account Created"
    else
      render 'new'
    end
  end

  def update
    @account = Account.find(params['id'])
    if @account.update_attributes(account_params)
      redirect_to account_path(@account)
    else
        render 'new'
    end
  end

  def show
    @account = Account.find(params['id'])
  end

  def destroy
    @account = Restaurant.find(params[:id])
    @account.destroy
    redirect_to accounts_path
  end

  def edit
    @account = Account.find(params[:id])
  end

  def index
    @accounts = Account.all
  end

  private
  def account_params
    params.require(:account).permit(:profile_name, :address1, :address2, :city, :postal_code, :telephone, :mobile, :email, :password, :password_confirmation)
  end
end
