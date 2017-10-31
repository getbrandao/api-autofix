require 'rails_helper'

RSpec.describe User, type: [:model, :user] do
  context 'Save record' do
    let(:user){build(:user)}

    it 'with valid record' do
      expect(user.save).to be_truthy
    end

    it "check email's respond" do
      expect(user).to respond_to(:email)
    end
  end
end
