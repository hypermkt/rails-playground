# frozen_string_literal: true

class AddDepartmentToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :department, :string, null: true
  end
end
