module AuthService::SignIn
  def self.call(sign_in_params)
    user = User.find_by(email: sign_in_params[:email])
    raise(ExceptionHandler::AuthenticationError, Message.email_not_found) unless user
    raise(ExceptionHandler::AuthenticationError, Message.incorrect_password) unless user.authenticate(sign_in_params[:password])
    return UtilService::TokenGenerator.call(user), user
  end
end