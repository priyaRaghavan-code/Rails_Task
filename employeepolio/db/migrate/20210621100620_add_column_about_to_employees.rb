class AddColumnAboutToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :about, :string
  end
end
