# frozen_string_literal: true

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
