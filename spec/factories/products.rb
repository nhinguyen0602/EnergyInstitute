FactoryBot.define do
  factory :product do
    name {"product"}
    association :enterprise 
  end
end
