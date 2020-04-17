require 'rails_helper'

RSpec.describe 'sign in rspec' do
  describe "sign in" do
    subject { FactoryBot.create :user }
    let!(:user_param) do
      return {email: 'test@gmail.com', password: '1234567890' }
    end

    it "is success" do
      token, user = AuthService::SignIn.call(user_param)
      expect(user).email.to eq(subject.email)
    end

  end
end