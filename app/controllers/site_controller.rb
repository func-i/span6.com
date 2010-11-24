class SiteController < ApplicationController


  def index
    @on_home = true
  end

  def about
    @on_about = true
  end

  def tour
    @on_tour = true
  end

  def pricing
    @on_pricing = true
  end

  def contact
    @on_contact = true
  end

end
