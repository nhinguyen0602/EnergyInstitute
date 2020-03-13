class EnterprisesController < ApplicationController
  def show
    enterprise, enterprise_details = EnterpriseService::Show.call(@current_user, params[:year])
    data = {
      enterprise: enterprise,
      enterprise_details: enterprise_details
    }
    render_data data
  end

  def update
    enterprise, enterprise_details = EnterpriseService::Update.call(@current_user, enterprise_params)
    data = {
      enterprise: enterprise,
      enterprise_details: enterprise_details
    }
    render_data data
  end

  def enterprise_params
    params.require(%i[provincial district commune production_value number_of_employee year_of_investigation])
    params.permit(:provincial, :district, :commune, :lat, :lng, :production_value, :number_of_employee, :year_of_investigation)
  end
  
end
