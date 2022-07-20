class Clients::PaymentsController < ApplicationController
  def index
    @payments = Payment.where(account_id: current_user.id, status: "pending").paginate(page: params[:page], per_page: 5)
  end

  def create
    @account = Account.find(current_user.id)
    @payment = @account.payments.build(payment_params)
   
    if @payment.save
      redirect_to clients_payments_path, notice: 'Virtual Payment was successfully made.'
      # redirect_to @payment, notice: 'Product was successfully created.'
    else
      render clients_payments_path
    end
  end

  def update
    @payment = Payment.find(params[:id])
 
    if @payment.update(payment_params)
    redirect_to @payment
    # redirect_to @payment, notice: 'Product was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
    def payment_params
      params.require(:payment).permit(:amount, :recipient_id, :description)
    end
end