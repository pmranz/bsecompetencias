class Workers < ActiveRecord::Migration
  def self.up
    add_column :workers,  :number_of_positions, :string
  end

  def self.down
    remove_column :number_of_positions
  end
end
