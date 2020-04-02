# Base controller for super admin requests
# Create another controller inherite from SupperAdminController by this form below
# SuperAdmin::{ControllerName} < SuperAdmin::BaseController
class Admin::BaseController < ApplicationController
  # skip_before_action :authorize_request
  # before_action :authorize_super_admin
  # Example api for super admin request
  # def example 
  #   render json: @current_user
  # end
end