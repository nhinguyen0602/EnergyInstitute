class EnergyConsumption < ApplicationRecord
    belongs_to :enterprise
    validates :year_of_investigation, presence: true
    validates :self_produced_electricity, presence: true
    validates :consumption_electricity, presence:true
    validates :biomass_energy, presence:true
    validates :renewable_energy, presence:true
end
