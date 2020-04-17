FactoryBot.define do
  factory :sector do
    name {"sector"}
    association :subsector
  end
end