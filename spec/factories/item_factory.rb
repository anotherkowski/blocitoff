require 'faker'

FactoryGirl.define do

    factory :item, class: Item do
      user = build(:user)
      name { Faker::Hipster.words(4)}
    end

end
