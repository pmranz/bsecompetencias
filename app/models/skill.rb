class Skill < ActiveRecord::Base


belongs_to :skill_type

validates :name, :description, :skill_type_id, :presence => true

has_many :behaviors

accepts_nested_attributes_for :behaviors, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
