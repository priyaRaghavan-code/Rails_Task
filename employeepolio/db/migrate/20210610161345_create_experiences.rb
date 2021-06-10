class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.integer :empid
      t.string :start_date
      t.string :end_date
      t.string :company_name

      t.timestamps
    end
  end
end
