module WardService::Index
  def self.call district
    district.wards
  end
end