class SectorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :subsector, serializer: SubsectorSerializer
end
