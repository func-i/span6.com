class InquiriesController < ApplicationController

  def new
    @on_contact = true
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new
    @success = @inquiry.save
  end
end
