# frozen_string_literal: true

# == Schema Information
#
# Table name: studios
#
#  id          :bigint(8)        not null, primary key
#  bytitle     :string
#  description :string
#  img         :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Studio < ApplicationRecord
  validates :title,       presence: true
  validates :description, presence: true

  has_many :films
end
