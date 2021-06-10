class Employee < ApplicationRecord
  has_many :experiences, foreign_key: :empid, primary_key: :empid, dependent: :destroy
end
