class GreenhouseEmissionSerializer < ActiveModel::Serializer
  attributes :id, :year_of_investigation, :product_id
  has_many :greenhouse_emission_details, serializer: GreenhouseEmissionDetailSerializer
end