class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.integer :mobile
      t.string :gender
      t.string :email
      t.string :skills
      t.string :address

      t.timestamps
    end
  end
end
