# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MainController, type: :controller do
  describe 'GET #index' do
    let(:studios) { create_list :studio, 3 }
    let(:hits) { create_list :film, 8 }

    before { get :index }

    context 'required output per page' do
      it 'render to index template' do
        expect(subject).to render_template :index
      end

      it 'instance var studios include only studios' do
        expect(assigns(:studios)).to match_array(studios)
      end

      it 'instance hits studios include only hits' do
        expect(assigns(:hits)).to match_array(hits)
      end
    end
  end
end
