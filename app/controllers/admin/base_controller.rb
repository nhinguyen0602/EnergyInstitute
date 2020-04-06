class Admin::BaseController < ApplicationController

  before_action :authorize_request_admin
  
  def authorize_request_admin
    raise(ExceptionHandler::AuthenticationError, Message.user_not_allowed) unless @current_user.role.name == 'admin'
  end

end