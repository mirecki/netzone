# frozen_string_literal: true

# == Schema Information
#
# Table name: cart_items
#
#  id         :bigint(8)        not null, primary key
#  quantity   :integer(4)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cart_id    :integer(4)
#  film_id    :integer(4)
#
# Indexes
#
#  index_cart_items_on_cart_id  (cart_id)
#  index_cart_items_on_film_id  (film_id)
#
class CartItem < ApplicationRecord
  belongs_to :film
  belongs_to :cart

  validates :cart_id, :quantity, presence: true
end
