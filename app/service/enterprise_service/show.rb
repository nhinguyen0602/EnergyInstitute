module EnterpriseService::Show
  def self.call(user, year)
    enterprise_details = EnterpriseDetail.belong_enterprise(user.enterprise)
    enterprise_details =  enterprise_details.at_year(year) if year.present?
    return user.enterprise, enterprise_details
  end  
end