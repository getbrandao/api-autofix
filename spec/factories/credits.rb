FactoryBot.define do
  factory :credit, class: 'Api::V1::Billing::Credit' do
    description 'CreditExample'
    date '2017-10-20'
    value 100.50
    types 1
  end
end