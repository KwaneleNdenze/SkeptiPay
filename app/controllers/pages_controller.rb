class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]
  def index

  end

  def about

  end

  def blog

  end

  def contact
    
  end

  def dashboard

  end
end