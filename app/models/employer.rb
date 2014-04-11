class Employer < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :fname, :lname, :password, :password_confirmation, :phone, :worker_id
  
  has_many :workers, :through => :jobs
  has_many :jobs
  
end