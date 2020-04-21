require 'rails_helper'

RSpec.describe Admin::UsersController, type: :request do
  describe "#index" do
   let!(:new_user) { FactoryBot.create(:user) }
   
   let!(:user_param) do
     return {email: 'test@gmail.com', password: '1234567890' }
   end
 
   before do
     role = Role.create!(name: "admin")
     new_user.role = role
     post '/api/auth/sign_in', params: user_param 
   end

   it "response successfully" do
     expect_status 200
   end
   
  end  
end
