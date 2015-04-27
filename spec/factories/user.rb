FactoryGirl.define do
  factory :user do
    password Faker::Internet.password(10,20)
  end
  factory :admin_user do
    email Faker::Internet.email
    password Faker::Internet.password(10,20)
  end
end
