# frozen_string_literal: true

class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.integer :category_id
      t.integer :studio_id
      t.string  :title
      t.string  :bytitle
      t.text    :content
      t.float   :price
      t.float   :old_price
      t.integer :status
      t.string  :keywords
      t.string  :description
      t.string  :img, default: 'no_image.jpg'
      t.integer :hit, default: 0
      t.timestamps
    end
  end
end
