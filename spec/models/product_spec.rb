require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe "Associations" do
    it "belongs to enterprise" do
      association = described_class.reflect_on_association(:enterprise)
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
  end

end
