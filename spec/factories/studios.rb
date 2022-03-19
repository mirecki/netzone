FactoryBot.define do
  factory :studio do
    title       { Faker::Lorem.sentence(word_count: 10) }
    bytitle     { Faker::Lorem.sentence(word_count: 10).downcase }
    img         { 'st-1.jpg' }
    description { Faker::Lorem.sentence(word_count: 10) }
  end
end
