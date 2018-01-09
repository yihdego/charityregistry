require 'rails_helper'

RSpec.describe Registry, type: :model do
  let!(:user) { User.create(username: 'yihdego')}
  let!(:list) { Registry.create(title: 'Coat Drive', description: "We're collecting coats for the community, we appreciate all your help as it goes toward keeping members of our community warm.", deadline:'(2018,2,3,4,5,6)', user_id: user.id)}
  describe 'attributes' do
    it 'has a title'  do
      expect(list.title).to eq 'Coat Drive'
    end
    it 'has a description' do
      expect(list.description).to eq "We're collecting coats for the community, we appreciate all your help as it goes toward keeping members of our community warm."
    end
    it 'has a deadline' do
      expect(list.deadline).to eq '2018-01-09 00:20:18.200000000 +0000'
    end
  end
  describe 'associations' do
    it 'belongs to a user' do
      expect(list.user).to eq user
    end
  end
end
