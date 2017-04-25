require 'faker'

FactoryGirl.define do
    factory :item, class: Item do
      name { Faker::Hipster.sentence(1)}
      association :user, factory: :user
      created_at Date.today
    end
end
