class AddEmpidExpToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :empid, :integer
    add_column :employees, :experience, :integer
  end
end
