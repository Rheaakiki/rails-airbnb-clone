class Field < ApplicationRecord
  # mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  validates :title, presence: true
  validates :price, presence: true
  validates :address, presence: true
  has_many :reviews, dependent: :destroy



end



