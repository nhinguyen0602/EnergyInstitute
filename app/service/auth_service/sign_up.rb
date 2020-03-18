module AuthService::SignUp
  def self.call(sign_up_params)
    user = User.find_by(email: sign_up_params[:email])
    raise(ExceptionHandler::BadRequestError, Message.email_is_existed) if user
    User.create!(sign_up_params)
  end
end