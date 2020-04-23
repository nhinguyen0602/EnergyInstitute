require 'rails_helper'

RSpec.describe 'sign in rspec' do
  describe "sign in" do
    let!(:new_user) { FactoryBot.create(:user) }
  
    let!(:user_param) do
      return {email: 'test@gmail.com', password: '1234567890' }
    end

    it "is success" do
      token, user = AuthService::SignIn.call(user_param)
      expect(user.email).to eq(new_user.email)
    end

    it "is false because email not found" do
      user_param[:email] = "nhi@gmail.com"
      expect { AuthService::SignIn.call(user_param) }.to raise_error(ExceptionHandler::AuthenticationError)
    end

    it "is false because password not correct" do
      user_param[:password] = "00000000000"
      expect { AuthService::SignIn.call(user_param) }.to raise_error(ExceptionHandler::AuthenticationError)
    end

  end
end