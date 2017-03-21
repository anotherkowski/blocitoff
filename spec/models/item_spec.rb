require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create!(name: "New item name")}

  describe "attributes" do
      it "has name attributes" do
        expect(item).to have_attributes(name: "New item name")
      end
  end

end
