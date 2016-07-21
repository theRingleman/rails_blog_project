FactoryGirl.define do
  factory :user do
    first_name "Joe"
    last_name "Smith"
    password "password"
    sequence(:email) { |n| "joesmith#{n}@example.com"}
  end
end
