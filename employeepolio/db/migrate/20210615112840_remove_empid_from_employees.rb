class RemoveEmpidFromEmployees < ActiveRecord::Migration[6.1]
  def change
    remove_column :employees, :empid
  end
end
