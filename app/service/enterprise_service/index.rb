module EnterpriseService::Index
  def self.call
    Enterprise.all
  end
end