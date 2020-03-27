class EnergyConsumption < ApplicationRecord
  belongs_to :enterprise
  validates :year_of_investigation, presence: true
  validates :self_produced_electricity, presence: true
  validates :consumption_electricity, presence:true
  validates :biomass_energy, presence:true
  validates :renewable_energy, presence:true

  scope :belong_enterprise, ->(enterprise_id){ where("enterprise_id= ?", enterprise_id) }
  scope :at_year, ->(year){
      if year
        swhere("year_of_investigation =?", year)
      else
        all
      end
    }
  scope :order_by_year, ->{order("year_of_investigation DESC")}
end
