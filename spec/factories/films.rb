FactoryBot.define do
  factory :film do
    association :category, factory: :category
    association :studio, factory: :studio

    title       { Faker::Lorem.word.camelcase }
    bytitle     { title.downcase }
    img         { 'f-1.png' }
    content     { Faker::Lorem.sentence(word_count: 10) }
    keywords    { title.downcase }
    description { content }
    price       { rand(10..500) }
    old_price   { rand(10..500) }
  end
end
