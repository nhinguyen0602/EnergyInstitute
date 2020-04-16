require 'rails_helper'

FactoryBot.define do
  factory :user do
    name {"test"}
    email {"test@gmail.com"}
    password {"1234567890"}
  end
end

RSpec.describe User, type: :model do
  describe "Validations" do
    subject { FactoryBot.create :user }
    
    it "is valid with valid attributes" do
        is_expected.to be_valid
    end
    
    # it "is not valid without a title" do
	  #   subject.title = nil
    #     is_expected.to_not be_valid
    # end
    
    # it "is not valid with too long description" do
    #     subject.description = "a" * 501
    #     is_expected.to_not be_valid
    # end
  end
end
