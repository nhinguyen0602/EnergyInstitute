class SubsectorsController < ApplicationController
  
  def index
    subsectors = SubsectorService::Index.call
    data = {
      subsectors: subsectors.map {|subsector| SubsectorSerializer.new(subsector)}
    }
    render_data data
  end
  
  def show
    subsector = SubsectorService::Show.call(params[:id])
    data = {
      subsector: SubsectorSerializer.new(subsector)
    }
    render_data data
  end

end
