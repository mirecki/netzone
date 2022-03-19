# frozen_string_literal: true

class Film < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  belongs_to :category
  belongs_to :studio

  has_many :related_films
  has_many :related, through: :related_films

  has_many :galleries
end
