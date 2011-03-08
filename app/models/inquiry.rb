class Inquiry < ActiveRecord::Base

  validates :name, :presence => true
  validates :email, :presence => true
  validates :subject, :presence => true
  validates :message, :presence => true

  after_create :send_email

  def send_email!
    GeneralMailer.new_inquiry(self).deliver
  end

  protected

  def send_email
    send_email!
  rescue Exception => e
    nil
  end

end
