class Admin::DemosController < Admin::BaseController
  skip_before_action :authorize_request
  skip_before_action :authorize_request_admin

  def enterprises
    enterprises, length = DemoService::EnterpriseIndex.call(params[:year], params[:province], params[:page], params[:amount])
    data = {
      enterprises: enterprises,
      length: length
    }
    render_data data
  end

  def energies
    energies, length  = DemoService::EnergyIndex.call(params[:year], params[:page], params[:amount])
    data = {
      energies: energies,
      length: length
    }
    render_data data
  end

  def products
    products, length  = DemoService::ProductIndex.call(params[:year], params[:page], params[:amount])
    data = {
      products: products,
      length: length
    }
    render_data data
  end

  def emission_energies
    emission_energies, length = DemoService::EmissionEnergyIndex.call(params[:year], params[:page], params[:amount])
    data = {
      emission_energies: emission_energies,
      length: length
    } 
    render_data data
  end

  def emission_products
    emission_products, length = DemoService::EmissionProductIndex.call(params[:year], params[:page], params[:amount])
    data = {
      emission_products: emission_products,
      length: length
    } 
    render_data data
  end

end
