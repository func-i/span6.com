class InquiriesController < ApplicationController

  def new
    @on_contact = true
    @inquiry = Inquiry.new
  end

  def create
    @on_contact = true
    @inquiry = Inquiry.new params[:inquiry]
    if @inquiry.save
      redirect_to inquiry_confirmed_path
    else
      render :new
    end
  end


end
