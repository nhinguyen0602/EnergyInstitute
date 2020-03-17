class EmissionFactorsController < ApplicationController
  def index
    emission_factor = EmissionFactorService::Index.call(params[:sector_id]) 
    data = {
      emission_factor: emission_factor
    }   
    render_data data
  end
end
