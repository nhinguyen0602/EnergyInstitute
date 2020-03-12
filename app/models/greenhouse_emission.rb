class GreenhouseEmission < ApplicationRecord
  belongs_to :enterprise
  belongs_to :product
  has_many :greenhouse_emission_details
  validates :year_of_investigation, presence: true
end
