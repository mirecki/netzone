# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  render_views

  describe 'GET #show' do
    subject { get :show, params: { id: category.id } }

    let(:category) { create :category }
    let!(:films) { create_list :film, 2, category: category }

    context 'find films for this category' do
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
end
