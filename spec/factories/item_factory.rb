require 'faker'

FactoryGirl.define do

    factory :item, class: Item do
      user = build(:user)
    end

end
