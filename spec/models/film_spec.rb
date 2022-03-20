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
require 'rails_helper'

RSpec.describe Film, type: :model do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :price }

  it { is_expected.to belong_to(:category) }
  it { is_expected.to belong_to(:studio) }

  it { is_expected.to have_many(:galleries) }

  it { is_expected.to have_many(:related_films) }
  it { is_expected.to have_many(:related) }
end
