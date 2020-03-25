module UtilService
  class JsonWebToken
    HMAC_SECRET = Rails.application.secrets.secret_key_base
  
    def self.encode(payload, exp = 24.hours.from_now)
      puts exp
      puts payload
      payload[:exp] = exp.to_i  
      JWT.encode(payload, HMAC_SECRET)
    end
  
    def self.decode(token)
      body = JWT.decode(token, HMAC_SECRET)[0]
      HashWithIndifferentAccess.new body
    rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError => e
      raise ExceptionHandler::AuthenticationError, e.message
    end
  end
end