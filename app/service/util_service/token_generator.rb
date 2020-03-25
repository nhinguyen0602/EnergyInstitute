module UtilService::TokenGenerator

  def self.call(user)
    payload = {
      user_id: user.id,
      email: user.email
    }

    puts payload
    puts user
    UtilService::JsonWebToken.encode(payload)
  end

end