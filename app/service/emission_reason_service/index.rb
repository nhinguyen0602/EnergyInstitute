module EmissionReasonService::Index
  def self.call
    EmissionReason.all
  end
end