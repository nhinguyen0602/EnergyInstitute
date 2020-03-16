class SectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :subsector_id
  has_one :subsector
end
