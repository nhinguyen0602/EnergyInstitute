class SectorsController < ApplicationController

  def index
    sectors = SectorService::Index.call(params[:subsector_id])
    data = {
      sectors: sectors.map {|sector| SectorSerializer.new(sector)}
    }
    render_data data  
  end

end
