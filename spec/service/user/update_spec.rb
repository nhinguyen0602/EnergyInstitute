require 'rails_helper'

RSpec.describe 'update user of admin' do
  describe 'update user' do
    let!(:role) { Role.create!(name: 'admin') }

    let!(:new_user) { FactoryBot.create(:user) }
  
    let!(:user_param) do
      return {email: 'newuser@gmail.com',name: 'newuser', password: '1234567890' }
    end

    it "is success" do
      user = UserService::Update.call(new_user, user_param)
      expect(user.email).to eq(user_param[:email])
    end

    it "is failed because user isn't user" do
      new_user.role = role
      expect { UserService::Update.call(new_user, user_param) }.to raise_error(ExceptionHandler::BadRequestError)
    end

  end
end