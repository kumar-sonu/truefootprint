FactoryBot.define do
  factory :message do
    body { Faker::Lorem.sentence }
    sender { Faker::Name.name }
    posted_at { Time.now }
  end
end
