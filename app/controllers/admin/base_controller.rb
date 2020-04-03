# Base controller for super admin requests
# Create another controller inherite from SupperAdminController by this form below
# SuperAdmin::{ControllerName} < SuperAdmin::BaseController
class Admin::BaseController < ApplicationController

  before_action :authorize_request_admin
  
  def authorize_request_admin
    raise(ExceptionHandler::AuthenticationError, Message.user_not_allowed) unless @current_usesr.role.name != 'admin'
  end

end