class EnterprisesController < ApplicationController
  def show
    enterprise, enterprise_details = EnterpriseService::Show.call(@current_user, params[:year])
    data = {
      enterprise: enterprise,
      enterprise_details: enterprise_details
    }
    render_data data
  end
end
