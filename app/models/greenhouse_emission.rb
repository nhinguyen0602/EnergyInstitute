class GreenhouseEmission < ApplicationRecord
  belongs_to :enterprise
  belongs_to :product, optional: true
  has_many :greenhouse_emission_details, dependent: :destroy
  validates :year_of_investigation, presence: true
end
