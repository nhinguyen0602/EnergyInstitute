class WardsController < ApplicationController
  before_action :get_district

  def index
    wards = WardService::Index.call(@district)
    data = {
      wards: wards
    }
    render_data data
  end

  def get_district
    @district = District.find(params[:district_id])
  end
end
