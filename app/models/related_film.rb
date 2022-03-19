# frozen_string_literal: true

class RelatedFilm < ApplicationRecord
  belongs_to :film
  belongs_to :related, class_name: 'Film'
end
