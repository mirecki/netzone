# frozen_string_literal: true

class CreateRelatedFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :related_films do |t|
      t.integer :film_id
      t.integer :related_id
    end
  end
end
