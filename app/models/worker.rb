class Worker < ActiveRecord::Base
  attr_accessible :email, :employer_id, :fname, :lname, :password_digest, :phone, :image
  
  has_secure_password
  validates_presence_of :password, :on => :create
  
  has_many :employers, :through => :jobs
  has_many :jobs
  
  mount_uploader :image, ImageUploader

end
