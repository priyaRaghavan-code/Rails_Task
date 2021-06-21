class Employee < ApplicationRecord
  has_many :experiences, dependent: :destroy
  accepts_nested_attributes_for :experiences, allow_destroy: true

  has_many :educations, dependent: :destroy
  accepts_nested_attributes_for :educations, allow_destroy: true

  has_one_attached :image
  has_one_attached :banner

  # validates :name,:age,:mobile,:gender,:email,:skills,:address, :presence => true
  # validates :name, :length => {:minimum => 15}
end
