module UserService::Show
  def self.call user_id
    User.find(user_id)
  end
end