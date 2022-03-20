class CartItem < ApplicationRecord
  belongs_to :film
  belongs_to :cart

  validates :cart_id, :quantity, presence: true
end
