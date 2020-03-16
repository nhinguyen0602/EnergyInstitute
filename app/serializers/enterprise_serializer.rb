class EnterpriseSerializer < ActiveModel::Serializer
  attributes :id, :name, :tax_code
  has_one :sector, serializer: SectorSerializer
end
