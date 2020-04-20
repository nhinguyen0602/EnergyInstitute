require 'rails_helper'

RSpec.describe 'create user of admin' do
  describe 'create user' do
    let!(:new_user) { FactoryBot.create(:user) }
  
    let!(:user_param) do
      return {email: 'newuser@gmail.com',name: 'newuser', password: '1234567890' }
    end

    it "is success" do
      user = UserService::Create.call(user_param)
      expect(user.email).to eq(user_param[:email])
    end

    it "is false because email is existed" do
      user_param[:email] = "test@gmail.com"
      expect { UserService::Create.call(user_param) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "is false because email empty" do
      user_param[:name] = ""
      expect { UserService::Create.call(user_param) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end
end