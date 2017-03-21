require 'rails_helper'

RSpec.describe User, type: :model do
  

  # TODO: auto-generated
  describe '#find_for_database_authentication' do
    it 'works' do
      warden_conditions = double('warden_conditions')
      result = User.find_for_database_authentication(warden_conditions)
      expect(result).not_to be_nil
    end
  end


end
