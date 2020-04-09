class Admin::UsersController < Admin::BaseController

  def index
    users = UserService::Index.call
    data = {
      users: users.map {|user| UserSerializer.new(user)}
    }
    render_data data  
  end
  
end