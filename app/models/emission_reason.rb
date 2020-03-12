class EmissionReason < ApplicationRecord
  validates :contain, presence: true
  has_many :greenhouse_emission_details
end
