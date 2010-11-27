class Signup < ActiveRecord::Base

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true
  validates :company, :presence => true

  validates :company, :presence => true

  validates :subdomain, :presence => true



end
