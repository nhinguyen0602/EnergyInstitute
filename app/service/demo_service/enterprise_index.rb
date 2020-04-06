module DemoService::EnterpriseIndex
  def self.call year, province, page, amount
    TestEnterprise.in_year(year).belong_province(province).paginate(page: page, per_page: amount)
  end 
end