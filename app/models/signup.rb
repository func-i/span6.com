class Signup < ActiveRecord::Base

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true
#  validates :company, :presence => true
#  validates :subdomain, :presence => true

  after_create :send_email

  def send_email!
    GeneralMailer.signup_request(self).deliver
  end

  protected

  def send_email
    send_email!
  rescue Exception => e
    nil
  end


end
