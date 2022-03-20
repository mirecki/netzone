# frozen_string_literal: true

# == Schema Information
#
# Table name: films
#
#  id          :bigint(8)        not null, primary key
#  bytitle     :string
#  content     :text
#  description :string
#  hit         :integer(4)       default("not_hit")
#  img         :string           default("no_image.jpg")
#  keywords    :string
#  old_price   :float
#  price       :float
#  status      :integer(4)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer(4)
#  studio_id   :integer(4)
#
# Indexes
#
#  index_films_on_category_id  (category_id)
#  index_films_on_studio_id    (studio_id)
#
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
