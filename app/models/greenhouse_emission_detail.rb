class GreenhouseEmissionDetail < ApplicationRecord
    belongs_to :emission_reason
    belongs_to :greenhouse_emission
end
