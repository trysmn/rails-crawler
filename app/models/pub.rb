class Pub < ApplicationRecord
  has_many :drinks, dependent: :destroy
  belongs_to :city
  has_many :users
  validates :name, :opening_time, :closing_time, :food, presence: true
end
