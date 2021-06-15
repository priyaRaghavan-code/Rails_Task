class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :institution_name
      t.string :grade
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
