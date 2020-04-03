class DatasController < ApplicationController

  skip_before_action :authorize_request

  def enterprise
    enterprises = DataModel::Enterprise.call
    data = {
      enterprises: enterprises
    }
    render_data data
  end

  def energy_consumption
    energy_consumptions = DataModel::EnergyConsumption.call
    data = {
      energy_consumptions: energy_consumptions
    }
    render_data data
  end

end
