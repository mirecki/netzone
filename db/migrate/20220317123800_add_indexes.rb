# frozen_string_literal: true

class AddIndexes < ActiveRecord::Migration[6.1]
  def change
    add_index :cart_items, :cart_id
    add_index :cart_items, :film_id

    add_index :galleries, :film_id

    add_index :products, :category_id
    add_index :products, :studio_id

    add_index :related_products, :film_id
    add_index :related_products, :related_id
  end
end
