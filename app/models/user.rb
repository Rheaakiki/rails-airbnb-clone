class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings
  has_many :fields, through: :bookings
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :username, presence: true
end
