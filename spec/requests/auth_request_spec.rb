require 'rails_helper'

RSpec.describe "AuthController", type: :request do
  describe "#sign_in" do
    let!(:new_user) { FactoryBot.create(:user) }

    let!(:user_param) do
      return {email: 'test@gmail.com', password: '1234567890' }
    end

    it "responds successfully" do
      post '/api/auth/sign_in', params: user_param 
      expect(response).to	have_http_status	"200"
    end

    it "false because email not found" do
      user_param[:email] = 'nhi@gmail.com'
      post '/api/auth/sign_in', params: user_param 
      expect(response).to	have_http_status	"401"
    end

    it "false because password not correct" do
      user_param[:password] = '1111111111'
      post '/api/auth/sign_in', params: user_param 
      expect(response).to	have_http_status	"401"
    end

  end

  describe "#sign_up" do
    let!(:new_user) { FactoryBot.create(:user) }
  
    let!(:user_param) do
      return {email: 'newuser@gmail.com',name: 'newuser', password: '1234567890' }
    end

    it "responds successfully" do
      post '/api/auth/sign_up', params: user_param 
      expect(response).to	have_http_status	"200"
    end

    it "false because email ís existed" do
      user_param[:email] = "test@gmail.com"
      post '/api/auth/sign_up', params: user_param 
      expect(response).to	have_http_status	"422"
    end

  end

end
