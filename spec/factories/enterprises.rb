FactoryBot.define do
  factory :enterprise do
    name {"doanh nghiep"}
    tax_code {"MS11"}
    association :sector
  end
end