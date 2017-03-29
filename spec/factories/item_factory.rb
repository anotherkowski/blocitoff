require 'faker'

FactoryGirl.define do

    factory :item, class: Item do
      name { Faker::Hipster.sentence(1)}
    end
end
