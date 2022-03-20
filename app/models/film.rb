# frozen_string_literal: true

# == Schema Information
#
# Table name: films
#
#  id          :bigint(8)        not null, primary key
#  bytitle     :string
#  content     :text
#  description :string
#  hit         :integer(4)       default(0)
#  img         :string           default("no_image.jpg")
#  keywords    :string
#  old_price   :float
#  price       :float
#  status      :integer(4)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer(4)
#  studio_id   :integer(4)
#
# Indexes
#
#  index_films_on_category_id  (category_id)
#  index_films_on_studio_id    (studio_id)
#
class Film < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  belongs_to :category
  belongs_to :studio

  has_many :related_films
  has_many :related, through: :related_films

  has_many :galleries

  acts_as_taggable_on :categories
  acts_as_taggable_on :studios

  enum hit: { hit: 1, not_hit: 0 }
  scope :active, -> { where(status: 1) }

  def discount
    (100 - (price * 100 / old_price)).round
  end
end
