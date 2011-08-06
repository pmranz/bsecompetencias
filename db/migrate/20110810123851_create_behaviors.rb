class CreateBehaviors < ActiveRecord::Migration
  def self.up
    create_table :behaviors do |t|
      t.integer :skill_id
      t.integer :level_id
      t.text :required_behavior

      t.timestamps
    end
  end

  def self.down
    drop_table :behaviors
  end
end
