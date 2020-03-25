class GreenhouseEmissionDetailSerializer < ActiveModel::Serializer
  attributes :carbon_dioxide, :methane, :nitrous_dioxide, :emission_reason

  def emission_reason
    EmissionReasonSerializer.new(object.emission_reason)
  end
  
end
