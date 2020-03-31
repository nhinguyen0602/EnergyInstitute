class EmissionReasonsController < ApplicationController
  def index
    reasons = EmissionReasonService::Index.call
    data = {
      reasons: reasons
    }
    render_data data
  end
end
