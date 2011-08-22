class ChangeColSkills < ActiveRecord::Migration
 def self.up
  change_column(:skills, :name, :string)
  end

  def self.down
    change_column(:skills, :name, :text)
  end
end
