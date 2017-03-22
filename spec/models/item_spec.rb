require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:user) }

  let(:my_user) { build(:user)}
  let(:item2) { Item.create!(name: Faker::Hipster.words(4), user: my_user)}
  let(:item1) { Item.create!(name: "New item name", user: my_user)}

  describe "attributes" do
      it "has name attributes" do
        expect(item1).to have_attributes(name: "New item name")
      end
  end

end
