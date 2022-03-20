# frozen_string_literal: true

# == Schema Information
#
# Table name: galleries
#
#  id      :bigint(8)        not null, primary key
#  img     :string
#  film_id :integer(4)
#
# Indexes
#
#  index_galleries_on_film_id  (film_id)
#
FactoryBot.define do
  factory :gallery do
  end
end
