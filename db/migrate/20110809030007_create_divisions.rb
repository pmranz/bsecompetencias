class CreateDivisions < ActiveRecord::Migration
  def self.up
    create_table :divisions do |t|
      t.integer :id
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :divisions
  end
end
