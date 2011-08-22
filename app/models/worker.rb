class Worker < ActiveRecord::Base
  validates :name, :presence => true
end
