class EmissionFactorsController < ApplicationController

  def index
    emission_factor = EmissionFactorService::Index.call(params[:sector_id]) 
    data = {
      emission_factor: emission_factor
    }   
    render_data data
  end

  def update
    emission_factor = EmissionFactorService::Update.call(params[:id], emission_dactor_params)
    data = {
      emission_factor: emission_factor
    }
    render_data data
  end

  def emission_dactor_params
    params.require(%i[emission_source unit carbon_dioxide methane nitrous_dioxide])
    params.permit(:emission_source, :unit, :carbon_dioxide, :methane, :nitrous_dioxide)
  end
end
