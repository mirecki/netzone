# frozen_string_literal: true

class Studio < ApplicationRecord
  validates :title,       presence: true
  validates :description, presence: true

  has_many :films
end
