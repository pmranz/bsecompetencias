class Skill < ActiveRecord::Base

  belongs_to :skill_type
  has_many :behaviors

  validates :name, :description, :skill_type_id, :presence => true

  accepts_nested_attributes_for :behaviors, :allow_destroy => :true
  #, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
