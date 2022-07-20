class Clients::DashboardController < ApplicationController
  def index 
    @account = current_user.account
    @payments = @account.payments.all
  end
end