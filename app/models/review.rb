class Review < ApplicationRecord
  belongs_to :field
  validates :content, length: { minimum: 20 }
end
