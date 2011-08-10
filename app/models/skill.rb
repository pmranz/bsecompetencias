class Skill < ActiveRecord::Base


belongs_to :skill_type

validates :name, :description, :skill_type_id, :presence => true

end
