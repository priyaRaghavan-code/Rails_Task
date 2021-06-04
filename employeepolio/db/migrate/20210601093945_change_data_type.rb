class ChangeDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :employees, :mobile, :string
  end
end
