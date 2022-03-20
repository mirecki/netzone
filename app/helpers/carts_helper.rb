# frozen_string_literal: true

module CartsHelper
  def films
    @films = cart_items.includes(:film).all
  end
end
