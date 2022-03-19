# frozen_string_literal: true

# == Schema Information
#
# Table name: authorizations
#
#  id         :bigint(8)        not null, primary key
#  provider   :string
#  uid        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_authorizations_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Authorization, type: :model do
  it { is_expected.to belong_to(:user) }
end
