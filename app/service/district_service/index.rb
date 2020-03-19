module DistrictService::Index
  def self.call province_id
    Province.find(province_id).districts
  end
end