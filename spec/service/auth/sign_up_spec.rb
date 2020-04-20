require 'rails_helper'

RSpec.describe 'sign up rspec' do
  describe "sign in" do
    let!(:new_user) { FactoryBot.create(:user) }
  
    let!(:user_param) do
      return {email: 'newuser@gmail.com',name: 'newuser', password: '1234567890' }
    end

    it "is success" do
      user = AuthService::SignUp.call(user_param)
      expect(user.email).to eq(user_param[:email])
    end

    it "is false because email is existed" do
      user_param[:email] = "test@gmail.com"
      expect { AuthService::SignUp.call(user_param) }.to raise_error(ExceptionHandler::ActiveRecord::RecordNotUnique)
    end

    it "is false because email empty" do
      user_param[:name] = ""
      expect { AuthService::SignIn.call(user_param) }.to raise_error(ExceptionHandler::ActionController::ParameterMissing)
    end

  end
end