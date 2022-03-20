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
