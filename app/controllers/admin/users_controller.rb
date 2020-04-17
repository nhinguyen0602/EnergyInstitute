class Admin::UsersController < Admin::BaseController
  before_action :get_user, only: %i[show update]

  def index
    render_users User.all
  end

  def show
    render_user @user
  end


  def create
    user = UserService::Create.call(user_params)
    render_user user
  end

  def update
    user = UserService::Update.call(@user, user_params)
    render_user user
  end
  
  def user_params
    params.require(%i[email name password])
    params.permit(:email, :name, :password, :gender)
  end

  private 

  def render_user user
    data = {
      user: Userserializer.new(user)
    }
    render_data data
  end

  def render_users users
    data = {
      users: users.map {|user| Userserializer.new(user)}
    }
    render_data data 
  end

  def get_user
    @user = User.find(params[:user_id])
  end
  
end