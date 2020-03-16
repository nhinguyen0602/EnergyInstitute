class Product < ApplicationRecord
  belongs_to :enterprise
  has_many :productivities
  has_many :greenhouse_emissions
  validates :name, presence: true
end
