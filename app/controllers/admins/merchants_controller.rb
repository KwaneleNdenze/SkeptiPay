class Admins::MerchantsController < ApplicationController
  def index
    @merchants = User.where(type: "User::Merchant")
  end
end