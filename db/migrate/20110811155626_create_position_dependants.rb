class CreatePositionDependants < ActiveRecord::Migration
  def self.up
    create_table :position_dependants do |t|
      t.integer :position_id
      t.integer :dependent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :position_dependants
  end
end
