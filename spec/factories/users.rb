# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@netzone.com" }
    password              { '123456789' }
    password_confirmation { '123456789' }
  end
end
