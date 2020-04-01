class DatasController < ApplicationController
  skip_before_action :authorize_request
  def enterprise
    enterprises = DataModel::Enterprise.call
    data = {
      enterprises: enterprises
    }
    render_data data
  end
end
