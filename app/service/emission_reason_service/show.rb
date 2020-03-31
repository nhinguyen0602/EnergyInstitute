module EmissionReasonService::Show
  def self.call emission_reason_id
    EmissionReason.find(emission_reason_id)
  end
end