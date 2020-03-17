module EnterpriseService::Update
  def self.call(user, enterpeise_params)
    enterprise_detail_at_year = EnterpriseDetail.belong_enterprise(user.enterprise.id).at_year(enterpeise_params[:year_of_investigation]).first
    if enterprise_detail_at_year
      enterprise_detail_at_year.update!(enterpeise_params)
    else
      enterprise_detail_at_year = user.enterprise.enterprise_details.create!(enterpeise_params)
    end
    return user.enterprise, enterprise_detail_at_year
  end
end