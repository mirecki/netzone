# frozen_string_literal: true

# == Schema Information
#
# Table name: studios
#
#  id          :bigint(8)        not null, primary key
#  bytitle     :string
#  description :string
#  img         :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :studio do
    title       { Faker::Lorem.sentence(word_count: 10) }
    bytitle     { Faker::Lorem.sentence(word_count: 10).downcase }
    img         { 'disney.jpg' }
    description { Faker::Lorem.sentence(word_count: 10) }
  end
end
