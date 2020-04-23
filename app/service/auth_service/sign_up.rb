module AuthService::SignUp
  def self.call(sign_up_params)
    sign_up_params[:role] = RoleService::Find.user
    User.create!(sign_up_params)
  end
end