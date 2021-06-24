class ChangeDateTypeInAllTable < ActiveRecord::Migration[6.1]
  def change
    change_column :educations, :end_date, 'date USING CAST(start_date AS date)'
    change_column :experiences, :start_date, 'date USING CAST(start_date AS date)'
    change_column :experiences, :end_date, 'date USING CAST(start_date AS date)'
  end
end
