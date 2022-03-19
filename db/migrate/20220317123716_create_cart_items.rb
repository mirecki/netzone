# frozen_string_literal: true

class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id
      t.integer :film_id
      t.integer :copies
      t.timestamps
    end
  end
end
