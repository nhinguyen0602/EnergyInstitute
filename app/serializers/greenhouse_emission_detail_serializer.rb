class GreenhouseEmissionDetailSerializer < ActiveModel::Serializer
  attributes :carbon_dioxide, :methane, :nitrous_dioxide
end
