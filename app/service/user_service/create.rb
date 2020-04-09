module UserService::Create
  def self.call user_params
    user = User.find_by(email: user_params[:email])
    raise(ExceptionHandler::BadRequestError, Message.email_is_existed) if user
    Role.find_by(name: 'user').users.create!(user_params)
  end
end