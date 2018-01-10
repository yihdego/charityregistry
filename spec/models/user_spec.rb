require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { User.create(username: 'yihdego')}
  describe 'attributes' do
    it 'has a username' do
      expect(user.username).to eq 'yihdego'
    end
  end
end
