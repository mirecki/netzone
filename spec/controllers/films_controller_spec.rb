# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FilmsController, type: :controller do
  render_views

  describe 'GET #show' do
    subject { get :show, params: { id: film.id } }

    let(:film) { create :film }
    let!(:user) { create :user }

    context 'show film' do
      it 'render show view' do
        sign_in user
        expect(subject).to render_template :show
      end
    end
  end

  describe 'GET #index' do
    let!(:films) { create_list :film, 5 }

    before { get :index }

    context 'show films' do
      it 'render index view' do
        expect(subject).to render_template :index
      end

      it 'instance var films includes all films' do
        expect(assigns(:films)).to match_array(films)
      end

      it 'films data in response' do
        expect(response.body).to include(films.first.title,
        films.second.title)
      end
    end
  end
end
