# frozen_string_literal: true

class CartItem < ApplicationRecord
  belongs_to :film
  belongs_to :cart

  validates :cart_id, :copies, presence: true
end