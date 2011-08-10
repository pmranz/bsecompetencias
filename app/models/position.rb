class Position < ActiveRecord::Base
  
  belongs_to :job_title
  belongs_to :worker
  
  validates :department_id, :job_title_id, :worker_id, :presence => true
end
