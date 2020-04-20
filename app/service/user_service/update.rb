module UserService::Update
  def self.call user, user_params
    raise(ExceptionHandler::BadRequestError, Message.user_not_allowed) if user.is_admin?
    user.update!(user_params)
    user
  end
end