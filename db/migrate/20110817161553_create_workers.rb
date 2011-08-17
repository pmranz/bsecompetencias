class CreateWorkers < ActiveRecord::Migration
  def self.up
    create_table :workers do |t|
      t.string :name
      t.string :last_name
      t.string :document

      t.timestamps
    end
  end

  def self.down
    drop_table :workers
  end
end
