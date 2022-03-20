# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CartsController, type: :controller do
  render_views

  let!(:user) { create :user }
  let(:film) { create :film }
  let(:cart) { create :cart, user: user }
  let!(:item) { create :cart_item, cart: cart, film: film }

  describe 'GET #show' do
    subject { get :show }

    it 'render show view' do
      sign_in user
      expect(subject).to render_template(:show)
      expect(response.body).to include(film.title)
    end
  end

  describe 'DELETE #destroy' do
    subject { delete :destroy }

    context 'delete form cart' do
      it 'delete film from cart' do
        sign_in user
        expect { subject }.to change { user.reload.cart.present? }.to(false)
      end

      it 'delete film from cart_items' do
        sign_in user
        expect { subject }.to change(user.cart.cart_items, :count).by(-1)
      end

      it 'render view show after destroy' do
        expect(subject).to render_template :show
      end
    end
  end
end
