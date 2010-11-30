class SiteController < ApplicationController

  caches_page :index, :about, :pricing, :contact, :signup_confirmed, :inquiry_confirmed

  def index
    @on_home = true
  end

  def about
    @on_about = true
  end

  def pricing
    @on_pricing = true
  end

  def contact
    @on_contact = true
  end

  def signup_confirmed
    @on_signup = true
  end

  def inquiry_confirmed
    @inquiry = Inquiry.new params[:inquiry]
    @on_contact = true
  end

end
