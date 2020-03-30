class ClimateChangesController < ApplicationController

  before_action :get_sector

  def index
    climate_changes = ClimateChangeService::Index.call(@sector)
    data = {
      climate_changes: climate_changes
    }
    render_data data
  end

  def get_sector
    @sector = Sector.find(params[:sector_id])
  end
end
