require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item2) { Item.create!(name: Faker::Hipster.words(4))}
  let(:item1) { Item.create!(name: "New item name")}
  
  describe "attributes" do
      it "has name attributes" do
        expect(item1).to have_attributes(name: "New item name")
      end
  end

end
