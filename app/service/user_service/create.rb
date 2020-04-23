module UserService::Create
  def self.call user_params
    user_params[:role] = RoleService::Find.user
    user = User.create!(user_params)
    user
  end
end