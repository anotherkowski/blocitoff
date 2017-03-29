require 'faker'

FactoryGirl.define do
    factory :user, class: User do
      email { Faker::Internet.email }
      username { "usernameusername" }
      password "password"
      password_confirmation "password"
      confirmed_at Date.today
    end
end
