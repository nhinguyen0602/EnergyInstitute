FactoryBot.define do
  factory :user do
    name {"test"}
    email {"test@gmail.com"}
    password {"1234567890"}
    password_confirmation { "1234567890" }
    association :role
  end
end