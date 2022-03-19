# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :user

  has_many :cart_items, dependent: :destroy
  has_many :films, through: :cart_items

  validates :user_id, presence: true
end
