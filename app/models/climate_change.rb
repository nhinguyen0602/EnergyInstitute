class ClimateChange < ApplicationRecord
  validates :year_of_investigation, presence: true
  belongs_to :sector
end
