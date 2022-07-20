class AccountsController < ApplicationController
  def index
    @account = Account.where(user_id: current_user.id).first
  end

  def new 
    @account = Account.new
  end

  def create
    @account = Account.create(account_params)
   
    if @account.save
      byebug
      redirect_to accounts_path
      # redirect_to @account, notice: 'Product was successfully created.'
    else
      render 'index'
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
 
    if @account.update(account_params)
    redirect_to accounts_path
    # redirect_to @account, notice: 'Product was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
    def account_params
      params.require(:account).permit(:first_name, :user_id, :last_name, :company_name, :sector, :street_address, :surburb, :city, :province, :card_number, :ccv, :expiry_date)
    end
end