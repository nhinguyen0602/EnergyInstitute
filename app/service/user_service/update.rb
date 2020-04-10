module UserService::Update
  def self.call user, user_params
    raise(ExceptionHandler::BadRequestError, Message.user_not_allowed) unless user.is_admin?
    user.update!(user_params)
    user
  end
end