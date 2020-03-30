class ClimateChangesController < ApplicationController

  before_action :get_sector

  def index
    climate_changes = ClimateChangeService::Index.call(@sector)
    data = {
      climate_changes: climate_changes
    }
    render_data data
  end

  def show
    climate_change = ClimateChangeService::Show.call(@sector, params[:year_of_investigation])
    data = {
      climate_change: climate_change
    }
    render_data data
  end

  def get_sector
    @sector = Sector.find(params[:sector_id])
  end
end
