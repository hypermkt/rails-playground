class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false

      # Bitemporal columns
      t.bigint :bitemporal_id
      t.datetime :valid_from
      t.datetime :valid_to
      t.datetime :transaction_from
      t.datetime :transaction_to

      t.timestamps
    end

    add_index :employees, :bitemporal_id
  end
end
