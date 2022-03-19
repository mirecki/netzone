# frozen_string_literal: true

class AddIndexes < ActiveRecord::Migration[6.1]
  def change
    add_index :cart_items, :cart_id
    add_index :cart_items, :film_id

    add_index :galleries, :film_id

    add_index :films, :category_id
    add_index :films, :studio_id

    add_index :related_films, :film_id
    add_index :related_films, :related_id
  end
end
