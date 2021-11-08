class CreateCertifications < ActiveRecord::Migration[6.1]
  def change
    create_table :certifications do |t|
      t.string :title
      t.date :issued_date
      t.date :expiration_date
      t.string :issued_by

      t.timestamps
    end
  end
end
