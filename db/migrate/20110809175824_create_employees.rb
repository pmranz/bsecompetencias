class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.integer :nroDocumento
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
