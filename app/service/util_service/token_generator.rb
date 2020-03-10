module UtilService::TokenGenerator

  def self.call(user)
    payload = {
      user_id: user.id,
      email: user.email
    }
    UtilService::JsonWebToken.encode(payload)
  end

end