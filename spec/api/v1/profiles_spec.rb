# frozen_string_literal: true

require 'rails_helper'

describe 'Profile API' do
  let(:api_url) { '/api/v1/profile' }

    describe 'GET #index' do
      context 'not auth' do
        let(:params) { { format: :json, access_token: 1234 } }
        before { get api_url, params: params }

        it 'returns 401 status token if token is invalid' do
          expect(response.status).to eq 401
        end
      end
    end
end
