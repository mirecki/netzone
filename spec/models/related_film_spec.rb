# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RelatedFilm, type: :model do
  it { is_expected.to belong_to(:film) }
  it { is_expected.to belong_to(:related) }
end
