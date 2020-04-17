require 'rails_helper'

FactoryBot.define do
  factory :role do
    name {"user"}
  end
end

FactoryBot.define do
  factory :user do
    name {"test"}
    email {"test@gmail.com"}
    password {"1234567890"}
    association :role
  end
end

RSpec.describe User, type: :model do

  describe "Associations" do
    it "belongs to role" do
      association = described_class.reflect_on_association(:role)
      expect(association.macro).to eq :belongs_to
    end
  end

  describe "Validations" do
    subject { FactoryBot.create :user }
    it "is valid with valid attributes" do
        is_expected.to be_valid
    end
    
    it "is not valid without a name" do
	    subject.name = nil
        is_expected.to_not be_valid
    end
    
    it "is not valid without a email" do
	    subject.email = nil
        is_expected.to_not be_valid
    end

    it "is not valid without a password" do
	    subject.password = nil
        is_expected.to_not be_valid
    end

    it "is not valid with too long password" do
	    subject.password = "n"*400
        is_expected.to_not be_valid
    end

    it "does not allow duplicate email per user" do
      user = User.new(name: 'test', email: 'test@gmail.com', password: '122234567777')
      expect(user).to_not be_valid
    end
  end
end
