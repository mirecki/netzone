# frozen_string_literal: true

# == Schema Information
#
# Table name: carts
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_carts_on_user_id  (user_id)
#
class Cart < ApplicationRecord
  belongs_to :user

  has_many :cart_items, dependent: :destroy
  has_many :films, through: :cart_items

  validates :user_id, presence: true
end
