class ProvincesController < ApplicationController
   def index
    provinces = ProvinceService::Index.call
    data = {
      provinces: provinces
    }
    render_data data
   end
   
   def show
    province = ProvinceService::Show.call
    data = {
      province: province
    }
    render_data data
   end
end
