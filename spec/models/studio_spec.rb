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
require 'rails_helper'

RSpec.describe Studio, type: :model do
  it { is_expected.to have_many(:films) }
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :description }
end
