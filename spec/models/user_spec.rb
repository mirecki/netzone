# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:encrypted_password) }

  it { is_expected.to have_one(:cart) }
  it { is_expected.to have_many(:authorizations) }
end
