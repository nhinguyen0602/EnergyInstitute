class DistrictsController < ApplicationController

  before_action :get_province

  def index
    districts = DistrictService::Index.call(@province)
    data = {
      districts: districts
    }
    render_data data
  end

  def show
    district = DistrictService::Show.call(@province, params[:id])
    data = {
      district: district
    }
    render_data data
  end

  def get_province
    @province = ProvinceService::Show.call(params[:province_id])
  end

end
