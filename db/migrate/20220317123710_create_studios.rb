# frozen_string_literal: true

class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.string :title
      t.string :bytitle
      t.string :img
      t.string :description

      t.timestamps
    end
  end
end
