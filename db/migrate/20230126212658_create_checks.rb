class CreateChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :checks do |t|
      t.integer :id_employee
      t.integer :id_sucursal
      t.datetime :timestamp
      t.string :check

      t.timestamps
    end
  end
end
