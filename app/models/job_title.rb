class JobTitle < ActiveRecord::Base
  validates :name, :presence => true
end
