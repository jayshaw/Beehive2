class Job < ActiveRecord::Base
  attr_accessible :description, :duration, :employer_id, :payment, :worker_id
  
  belongs_to :worker, :inverse_of => :job
  belongs_to :employer, :inverse_of => :job
  
  def self.search(search)
    if search
      where('description LIKE ?', "%#{search}%")
    else
      find(:all)
    end
  end
end


