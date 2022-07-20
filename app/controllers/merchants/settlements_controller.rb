class SettlementsController < ApplicationController  
  def index 
    @settlements = Payment.where("recipient_id": current_user.id)
  end
end