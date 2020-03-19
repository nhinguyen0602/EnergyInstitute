module WardService::Show
  def self.call district, ward_id
    district.wards.find(ward_id)
  end
end