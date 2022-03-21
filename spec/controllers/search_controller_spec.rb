# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SearchController, type: :controller do
  render_views

  describe 'GET #index' do
    subject! { get :index, params: { query: query, format: :json } }

    let!(:film) { create(:film, title: 'film_for_searching') }
    let(:query) { 'fil' }

    context 'search film' do
      it 'find film in db' do
        res = JSON.parse(response.body).first.values
        expect(res).to contain_exactly(film.title, film.id)
      end

      it 'response with 200 ok' do
        expect(response.code).to eq('200')
      end
    end

    context 'search with wrong query' do
      let(:query) { 'wrong' }

      it 'nothing found' do
        expect response.body.empty?
      end
    end
  end
end
