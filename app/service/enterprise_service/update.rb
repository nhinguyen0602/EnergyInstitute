module EnterpriseService::Update
  def self.call(user, enterpeise_params)
    enterprise_detail_at_year = EnterpriseDetail.belong_enterprise(user.enterprise.id).at_year(enterpeise_params[:year_of_investigation])
    if enterprise_detail_at_year == []
      user.enterprise.enterprise_details.create!(enterpeise_params)
    else
      enterprise_detail_at_year[0].update!(enterpeise_params)
    end
    return user.enterprise, EnterpriseDetail.belong_enterprise(user.enterprise.id).at_year(enterpeise_params[:year_of_investigation])
  end
end