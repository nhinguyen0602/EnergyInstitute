class SubsectorController < ApplicationController
  def index
    subsectors = SubsectorService::Index.call
    data = {
      subsectors: subsectors
    }
    render_data data
  end  
end
