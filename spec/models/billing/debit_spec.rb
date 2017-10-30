require 'rails_helper'

RSpec.describe Billing::Debit, type: [:model, :debit] do

  context 'Save record' do
    let(:valid_debit){build(:debit)}

    it 'with valid record' do
      expect(valid_debit.save).to be_truthy
    end

    it "check description's value return" do
      expect(valid_debit.description).to eq('DebitExample')
    end
    
  end
end