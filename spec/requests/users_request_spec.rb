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
    end

    let!(:headers) {valid_headers}

    it "response successfully" do
      byebug
      get '/api/admin/users', headers: headers
      expect_status 200
    end

  end
   

end
