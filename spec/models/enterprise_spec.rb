require 'rails_helper'

RSpec.describe Enterprise, type: :model do

  describe "Associations" do
    it "belongs to role" do
      association = described_class.reflect_on_association(:sector)
      expect(association.macro).to eq :belongs_to
    end
  end

  describe "Validations" do
    subject { FactoryBot.create :enterprise }

    it "is valid with valid attributes" do
        is_expected.to be_valid
    end
    
    it "is not valid without a name" do
	    subject.name = nil
        is_expected.to_not be_valid
    end
    
    it "is not valid without a tax code" do
	    subject.tax_code = nil
        is_expected.to_not be_valid
    end

    it "does not allow duplicate tax code per enterprise" do
      enterprise = Enterprise.new(name: 'enterprise', tax_code: "MS11")
      expect(enterprise).to_not be_valid
    end
  end
end
