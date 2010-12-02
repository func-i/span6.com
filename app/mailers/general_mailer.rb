class GeneralMailer < ActionMailer::Base
  default :from => "notifier@span6.com"

  def signup_request(signup)
    @signup = signup
    mail(:to => "kvirani@osamm.com", :subject => "OSAMM Demo Request")
  end
end
