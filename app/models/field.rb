class Field < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  validates :title, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
