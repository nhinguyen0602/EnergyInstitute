module UtilService::TokenGenerator

  def self.call(user)
    payload = {
      user_id: user.id,
      email: user.email,
      role_id: Role.find(user.role_id).id
    }
    UtilService::JsonWebToken.encode(payload)
  end

end