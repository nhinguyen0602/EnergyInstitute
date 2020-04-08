module DemoService::EnterpriseIndex
  def self.call year, province, page, amount
    enterprises = TestEnterprise.in_year(year).belong_province(province)
    length = enterprises.length()
    enterprises = enterprises.paginate(page: page, per_page: amount) if amount.present?
    return enterprises, length
  end 
end