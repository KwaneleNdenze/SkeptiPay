class Admins::ClientsController < ApplicationController
  def index
    @clients = User.where(type: 'User::Client')
  end
end