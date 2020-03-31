class EmissionReasonsController < ApplicationController
  def index
    reasons = EmissionReasonService::Index.call
    data = {
      reasons: reasons
    }
    render_data data
  end

  def show
    reason = EmissionReasonService::Show.call(params[:id])
    data = {
      reason: reason
    }
    render_data data
  end
end
