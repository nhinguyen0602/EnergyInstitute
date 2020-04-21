module ControllerSpecHelper

  def current_user_id
    "5843af897f8b9a2f3889f7aa"
  end

  def current_logged_in_company
    "5bce94fa29ba54676e8b4567"
  end

  def payload
    return {
        "user" => {
            "wisami_id" => "5843af897f8b9a2f3889f7aa",
            "name" => "frank@wisami.com",
            "email" => "frank@wisami.com",
            "source" => "wisami",
            "role_system" => "SRO_00",
            "company" => {
                "wisami_id" => "5bce94fa29ba54676e8b4567",
                "full_name" => "COGO",
                "role_company" => "CR00",
                "logo" => "https://wisami.aib.vn:296/upload/1567502477_aefc2869-07fb-456a-9ef4-64068b7b6984.jpg"
            },
            "current_logged_in_company" => "5bce94fa29ba54676e8b4567",
            "role_company" => "CR00"
        },
    }
  end
  # generate tokens from user id
  def token_generator
    AuthService::JsonWebToken.encode(payload)
  end

  # generate expired tokens from user id
  def expired_token_generator(user_id)
    # JsonWebToken.encode({ user_id: user_id }, (Time.now.to_i - 10))
  end

  # return valid headers
  def valid_headers
    {
        "Authorization" => token_generator,
    }
  end

  # return invalid headers
  def invalid_headers
    {
        "Authorization" => nil,
        "Content-Type" => "application/json"
    }
  end
end