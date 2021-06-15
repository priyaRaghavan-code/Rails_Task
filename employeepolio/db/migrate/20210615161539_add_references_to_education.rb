class AddReferencesToEducation < ActiveRecord::Migration[6.1]
  def change
    add_reference :educations, :employee, foreign_key: true
  end
end
