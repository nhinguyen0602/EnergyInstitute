class Admin::DemosController < Admin::BaseController
  skip_before_action :authorize_request
  skip_before_action :authorize_request_admin

  def enterprises
    enterprises = DemoService::EnterpriseIndex.call(params[:year], params[:province], params[:page], params[:amount])
    data = {
      enterprises: enterprises
    }
    render_data data
  end
end
