class DistrictsController < ApplicationController
  def index
    districts = DistrictService::Index.call
    data = {
      districts: districts
    }
    render_data data
  end

end
