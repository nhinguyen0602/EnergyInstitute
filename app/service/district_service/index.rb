module DistrictService::Index
  def self.call province
    province.districts
  end
end