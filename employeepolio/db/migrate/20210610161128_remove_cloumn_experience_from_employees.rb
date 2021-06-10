class RemoveCloumnExperienceFromEmployees < ActiveRecord::Migration[6.1]
  def change
    remove_column :employees, :experience, :integer
  end
end
