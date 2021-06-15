class AddDetailsToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :role, :string
    add_column :experiences, :location, :string
    add_column :experiences, :employement_type, :string
  end
end
