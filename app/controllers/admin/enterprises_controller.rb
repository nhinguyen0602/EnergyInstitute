class Admin::EnterprisesController < Admin::BaseController

  def index
    enterprises = EnterpriseService::Index.call
    data = {
      enterprises: enterprises
    }
    render_data data
  end
  
end