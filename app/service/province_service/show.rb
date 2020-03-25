module ProvinceService::Show
  def self.call province_id
    Province.find(province_id)
  end  
end