class Worker < ActiveRecord::Base
  validates :name, :presence => true
  scope :by_name,  lambda{ |filter_value| where("name like ?", filter_value) }
end
