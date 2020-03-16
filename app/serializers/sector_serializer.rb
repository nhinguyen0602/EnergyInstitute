class SectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :subsector_id, :subsector

  def subsector
    SubsectorSerializer.new(object.subsector)
  end
  
end
