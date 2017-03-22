require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:user) }

  let(:my_user) { build(:user) }
  let(:item) { create(:item) }

end
