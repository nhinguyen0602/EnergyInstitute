module EnterpriseService::Show
  def self.call(user, year)
    if year ==''
      return user.enterprise, EnterpriseDetail.belong_enterprise(user.enterprise)
    else
      return user.enterprise, EnterpriseDetail.belong_enterprise(user.enterprise).at_year(year)
    end
  end  
end     