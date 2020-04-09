module UserService::Index
  def self.call
    User.all
  end
end