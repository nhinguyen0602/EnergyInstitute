class EmissionReason < ApplicationRecord
  validates :description, presence: true
  has_many :greenhouse_emission_details
end
