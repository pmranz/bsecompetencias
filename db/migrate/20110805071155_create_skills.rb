class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.text :name
      t.text :description
      t.integer :skill_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
