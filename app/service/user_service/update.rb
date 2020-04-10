module UserService::Update
  def self.call user_id, user_params
    user = User.find(user_id)
    raise(ExceptionHandler::BadRequestError, Message.email_is_existed) if User.find_by(email: user_params[:email])
    raise(ExceptionHandler::BadRequestError, Message.user_not_allowed) if user.role_id != Role.find_by(name: 'user').id
    user.update!(user_params)
    user
  end
end