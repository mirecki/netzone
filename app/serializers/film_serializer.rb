# frozen_string_literal: true


# == Schema Information
#
# Table name: films
#
#  id          :bigint(8)        not null, primary key
#  bytitle     :string
#  content     :text
#  description :string
#  hit         :integer(4)       default("not_hit")
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
class FilmSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :short_title,
             :bytitle,
             :content,
             :price,
             :old_price,
             :description,
             :hit,
             :status

  belongs_to :category
  has_many :related, through: :related_films

  def short_title
    object.title.truncate(8)
  end
end
