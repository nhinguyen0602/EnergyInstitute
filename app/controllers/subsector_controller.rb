class SubsectorController < ApplicationController
  
  def index
    subsectors = SubsectorService::Index.call
    data = {
      subsectors: subsectors
    }
    render_data data
  end
  
  def show
    subsector = SubsectorService::Show.call
    data = {
      subsector: subsector
    }
    render_data data
  end

end
