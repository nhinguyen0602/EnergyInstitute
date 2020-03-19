class ProvincesController < ApplicationController
   def index
    provinces = ProvinceService::Index.call
    data = {
      provinces: provinces
    }
    render_data data
   end 
end
