class EmissionFactor < ApplicationRecord
  belongs_to :sector
  validates :emission_source, presence: true
  validates :unit, presence: true
  validates :carbon_dioxide, presence: true
  validates :methane, presence: true
  validates :nitrous_dioxide, presence: true
end
