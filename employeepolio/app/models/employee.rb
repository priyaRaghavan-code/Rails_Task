class Employee < ApplicationRecord
  has_many :experiences, foreign_key: :empid, primary_key: :empid, dependent: :destroy
  accepts_nested_attributes_for :experiences, allow_destroy: true
end
