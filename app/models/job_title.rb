class JobTitle < ActiveRecord::Base
  validates :name, :presence => true
  
  
  #named_scope :my_articles, lambda { |my_id|
  #{ :conditions => ["author_id = ?", my_id] }
  #}


  scope :by_name,  lambda{ |filter_value| where("name like ?", filter_value) }
end
