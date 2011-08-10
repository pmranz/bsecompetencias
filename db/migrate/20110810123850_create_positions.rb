class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.integer :department_id
      t.integer :job_title_id
      t.integer :worker_id

      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
