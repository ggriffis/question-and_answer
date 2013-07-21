FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@question_and_answer.com" }
    password "password"
    password_confirmation "password"
  end
end
