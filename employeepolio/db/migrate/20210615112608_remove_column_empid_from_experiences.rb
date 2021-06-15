class RemoveColumnEmpidFromExperiences < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :empid
  end
end
