class City < ApplicationRecord
  has_many :pubs
  has_many :search_details, dependent: :destroy
end
