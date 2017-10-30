FactoryBot.define do
  factory :debit, class: 'Billing::Debit' do
    description 'DebitExample'
    date '2017-10-20'
    value 100.50
    types 1
  end
end