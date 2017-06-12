class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :field
  # Review next validation
  validates :field, uniqueness: { scope: :user }
  validates :date, presence: true
end
