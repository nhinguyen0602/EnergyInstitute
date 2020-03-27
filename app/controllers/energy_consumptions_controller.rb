class EnergyConsumptionsController < ApplicationController

  before_action :get_enterprise

  def show
    energy_consumptions = EnergyConsumptionService::Show.call(@enterprise, params[:year])  
    data = {
      energy_consumptions: energy_consumptions
    }
    render_data data
  end

  def update
    energy_consumptions = EnergyConsumptionService::Update.call(@enterprise, energy_consumption_params)  
    data = {
      energy_consumptions: energy_consumptions
    }
    render_data data
  end

  def destroy
    EnergyConsumptionService::Destroy.call(params[:id])
  end

  def get_enterprise
    @enterprise = @current_user.enterprise
  end

  def energy_consumption_params
    params.require(%i[year_of_investigation self_produced_electricity consumption_electricity biomass_energy renewable_energy])
    params.permit(:year_of_investigation, :self_produced_electricity, :consumption_electricity, :biomass_energy, :renewable_energy,
                 :coal, :bitum_coal, :coke_coal, :dust_coal, :ko, :do, :fo, :lpg, :ng)
  end

end
