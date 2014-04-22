# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "user#{n}@todo.app"}
    password 'password'
    authentication_token 'token'
  end
end
