module UtilService::TokenGenerator

  def self.call(user)
    payload = {
      user_id: user.id,
      email: user.email,
      role: Role.find(user.role_id).name
    }
    UtilService::JsonWebToken.encode(payload)
  end

end