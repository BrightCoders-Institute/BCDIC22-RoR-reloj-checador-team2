class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :email
      t.string :name
      t.string :position
      t.integer :employee_number
      t.integer :private_number
      t.string :status, :default => 'Active'
      t.integer :id_store

      t.timestamps
    end
  end
end
