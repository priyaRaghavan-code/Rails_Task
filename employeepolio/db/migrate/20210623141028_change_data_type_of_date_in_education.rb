class ChangeDataTypeOfDateInEducation < ActiveRecord::Migration[6.1]
  def change
    change_column :educations, :start_date, 'date USING CAST(start_date AS date)'
  end
end
