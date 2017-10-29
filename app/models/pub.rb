class Pub < ApplicationRecord
  has_many :drinks
  belongs_to :city
  validates :name, :opening_time, :closing_time, :food, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
