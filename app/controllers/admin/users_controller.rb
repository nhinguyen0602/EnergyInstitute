class Admin::UsersController < Admin::BaseController

  def index
    users = UserService::Index.call
    data = {
      users: users.map {|user| UserSerializer.new(user)}
    }
    render_data data  
  end

  def create
    user = UserService::Create.call(user_params)
    data = {
      user: UserSerializer.new(user)
    }
    render_data data
  end
  
  def user_params
    params.require(%i[email name password])
    params.permit(:email, :name, :password, :gender)
  end
  
end