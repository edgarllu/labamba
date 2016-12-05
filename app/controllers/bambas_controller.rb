class BambasController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end
  def shop
  	authenticate_user!
  end
  
  def products
  end
end
