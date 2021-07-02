class Education < ApplicationRecord
  validates :institution_name, :grade, :start_date, :end_date, :presence => true
end
