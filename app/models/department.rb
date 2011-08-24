class Department < ActiveRecord::Base
  validates :name, :presence => true
  def load_divisions
    @thedivisions = Division.find(:all)
  end
end
