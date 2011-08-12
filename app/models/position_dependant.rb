class PositionDependant < ActiveRecord::Base
  
  belongs_to :position_id, :class_name=>"Position", :foreign_key=>"position_id"
  belongs_to :dependant_id, :class_name=>"Position", :foreign_key=>"position_id"
  
end
