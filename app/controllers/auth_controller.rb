class AuthController < ApplicationController
  def sign_up
    user = AuthService::SignUp.call(sign_up_params)
    data = {
      user: UserSerializer.new(user)
    }
    render_data data
  end
  
  def sign_up_params
    params.require(%i[email name password])
    params.permit(:email, :name, :password, :gender)
  end
end
