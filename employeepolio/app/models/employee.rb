class Employee < ApplicationRecord
  has_many :experiences, dependent: :destroy
  accepts_nested_attributes_for :experiences, allow_destroy: true
end
