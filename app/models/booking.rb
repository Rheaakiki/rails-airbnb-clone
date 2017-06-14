class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :field
  # Review next validation
  validates :date, presence: true
end
