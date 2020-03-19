module ProvinceService::Index
  def self.call
    Province.all
  end  
end