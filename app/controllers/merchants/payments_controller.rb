class Merchants::PaymentsController < ApplicationController
  def index
    @payments = Payment.where(recipient_id: current_user.id)
  end

  def create
    @account = Account.find(current_user.id)
    @payment = @account.payments.build(payment_params)
    @payment.recipient_id = User.where(username: @payment.recipient_id).pluck("id").first
   
    if @payment.save
      redirect_to payments_path
      # redirect_to @payment, notice: 'Product was successfully created.'
    else
      render 'index'
    end
  end

  def update
    @payment = Payment.find(params[:id])
 
    if @payment.update(payment_params)
    redirect_to payments_path
    # redirect_to @payment, notice: 'Product was successfully updated.'
    else
      render 'index'
    end
  end

  def destroy
  end

  private
    def payment_params
      params.require(:payment).permit(:amount, :recipient_id, :description)
    end
end