FactoryBot.define do
  factory :login, class: 'Api::User' do
    email {Faker::Internet.email}
    password {Faker::Internet.password(8)}
  end
end