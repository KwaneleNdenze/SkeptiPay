class Merchants::WithdrawalsController < ApplicationController
  def index
    @user = Account.where(user_id: current_user.id).first
    @withdrawals = @user.withdrawals.all
  end

  def create
    @account = Account.find(current_user.id)
    @withdrawal = @account.withdrawals.build(withdrawal_params)
   
    if @withdrawal.save
      redirect_to withdrawals_path
      # redirect_to @withdrawal, notice: 'Product was successfully created.'
    else
      render 'index'
    end
  end

  def update
    @withdrawal = Withdrawal.find(params[:id])
 
    if @withdrawal.update(withdrawal_params)
    redirect_to @withdrawal
    # redirect_to @withdrawal, notice: 'Product was successfully updated.'
    else
      render 'index'
    end
  end

  def destroy
  end

  private
    def withdrawal_params
      params.require(:withdrawal).permit(:amount)
    end
end