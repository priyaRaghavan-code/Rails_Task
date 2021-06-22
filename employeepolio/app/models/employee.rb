class Employee < ApplicationRecord
  has_many :experiences, dependent: :destroy
  accepts_nested_attributes_for :experiences, allow_destroy: true

  has_many :educations, dependent: :destroy
  accepts_nested_attributes_for :educations, allow_destroy: true

  has_one_attached :image
  has_one_attached :banner

  # validates :name,:age,:mobile,:gender,:email,:skills,:address, :presence => true
  # validates :name,  presence: true, length: { maximum: 70 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 300 },format: { with: VALID_EMAIL_REGEX },uniqueness: true

end
