# frozen_string_literal: true

# == Schema Information
#
# Table name: related_films
#
#  id         :bigint(8)        not null, primary key
#  film_id    :integer(4)
#  related_id :integer(4)
#
# Indexes
#
#  index_related_films_on_film_id     (film_id)
#  index_related_films_on_related_id  (related_id)
#
FactoryBot.define do
  factory :related_film do
  end
end
