module DistrictService::Show
  def self.call province, district_id
    province.districts.find(district_id)
  end
end