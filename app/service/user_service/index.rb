module UserService::Index
  def self.call
    Role.find_by(name: 'user').users
  end
end