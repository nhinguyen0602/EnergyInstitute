class EnergyConsumptionsController < ApplicationController
  def show
    energy_consumptions = EnergyConsumptionService::Show.call(@current_user.enterprise.id, params[:year])  
    data = {
      energy_consumptions: energy_consumptions
    }
    render_data data
  end

  def update
    energy_consumptions = EnergyConsumptionService::Update.call(@current_user.enterprise.id, energy_consumption_params)  
    data = {
      energy_consumptions: energy_consumptions
    }
    render_data data
  end

  def energy_consumption_params
    params.require(%i[year_of_investigation self_produced_electricity consumption_electricity biomass_energy renewable_energy])
    params.permit(:year_of_investigation, :self_produced_electricity, :consumption_electricity, :biomass_energy, :renewable_energy,
                 :coal, :bitum_coal, :coke_coal, :dust_coal, :ko, :do, :fo, :lpg, :ng)
  end

end
