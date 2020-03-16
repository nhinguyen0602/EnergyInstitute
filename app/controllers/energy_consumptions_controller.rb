class EnergyConsumptionsController < ApplicationController
  def show
    energy_consumptions = EnergyConsumptionService::Show.call(@current_user.enterprise.id, params[:year])  
    data = {
      energy_consumptions: energy_consumptions
    }
    render_data data
  end
end
