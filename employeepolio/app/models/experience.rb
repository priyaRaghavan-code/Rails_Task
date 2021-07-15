class Experience < ApplicationRecord
  validates :start_date, :presence => { :message => "Must be a valid date" }
  validates :end_date, :presence => {:message => "Must be a valid date"}
  validate :start_date_must_be_before_end_date, if: -> {start_date != nil && end_date != nil}
  validates :company_name,  presence: true, length: { maximum: 50 }
  validates :role,  presence: true, length: { maximum: 50 }
  validates :location,  presence: true, length: { maximum: 50 }
  validates :employement_type,  presence: true, length: { maximum: 50 }

  def start_date_must_be_before_end_date
    errors.add(:start_date, "Must be before end date") unless
       start_date < end_date
  end 

end
