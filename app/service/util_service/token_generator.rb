module UtilService::TokenGenerator

  def self.call(user)
    payload = {
      user_id: user.id,
      email: user.email,
      role_id: user.role.id
    }
    UtilService::JsonWebToken.encode(payload)
  end

end