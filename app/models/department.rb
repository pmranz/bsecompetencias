class Department < ActiveRecord::Base
  def load_divisions
    @thedivisions = Division.find(:all)
  end
end
