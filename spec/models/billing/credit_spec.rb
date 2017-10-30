require 'rails_helper'

RSpec.describe Billing::Credit, type: [:model, :credit] do

  context 'Save record' do
    let(:valid_credit){build(:credit)}

    it 'with valid record' do
      expect(valid_credit.save).to be_truthy
    end

    it "check description's value return" do
      expect(valid_credit.description).to eq('CreditExample')
    end
    
  end
end