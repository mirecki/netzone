# frozen_string_literal: true

class CreateGalleries < ActiveRecord::Migration[6.1]
  def change
    create_table :galleries do |t|
      t.integer :film_id
      t.string :img
    end
  end
end
