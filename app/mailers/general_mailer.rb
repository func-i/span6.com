class GeneralMailer < ActionMailer::Base
  default :from => "notifier@span6.com"

  def signup_request(signup)
    @signup = signup
    mail(:to => ["kvirani@span6.com"], :subject => "Span6 Demo Request")
  end

  def new_inquiry(inquiry)
    @inquiry = inquiry
    mail(:to => ["kvirani@span6.com"], :subject => "Span6 Inquiry")
  end
end
