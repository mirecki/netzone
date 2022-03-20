# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StudiosController, type: :controller do
  render_views

  describe 'GET #show' do
    subject { get :show, params: { id: studio.id } }

    let(:studio) { create :studio }
    let!(:films) { create_list :film, 2, studio: studio }

    context 'find films for this studio' do
      it 'render show view' do
        expect(subject).to render_template :show
      end

      it 'film data in response' do
        expect(subject).to render_template :show
        expect(response.body).to include(films.first.title,
        films.second.title)
      end
    end
  end

  describe 'GET #index' do
    let!(:studios) { create_list :studio, 2 }

    before { get :index }

    context 'show studios' do
      it 'render index view' do
        expect(subject).to render_template :index
      end

      it 'instance var studios includes all studios' do
        expect(assigns(:studios)).to match_array(studios)
      end

      it 'studios data in response' do
        expect(response.body).to include(studios.first.title,
        studios.second.title)
      end
    end
  end
end
