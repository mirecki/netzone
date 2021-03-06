# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  render_views

  let(:user) { create :user }
  let(:film) { create :film }
  let(:cart) { create :cart, user: user }
  let!(:item) { create :cart_item, cart: cart, film: film }

  let(:create_params) { { quantity: 1, film_id: film.id } }

  describe 'POST #create' do
    subject { post :create, params: create_params }

    context 'with valid attributes' do
      it 'saves the new item in the table cart_items' do
        sign_in user
        expect { subject }.to change(user.cart.cart_items, :count).by(1)
      end

      it 'render show view' do
        sign_in user
        expect(subject).to render_template(:create)
      end
    end

    context 'with invalid attributes' do
      let(:create_params) { { quantity: 0 } }

      it 'does not save item' do
        sign_in user
        expect { subject }.not_to change(user.cart.cart_items, :count)
      end
    end
  end

  describe 'DELETE #destroy' do
    subject { delete :destroy, params: create_params }

    let(:create_params) { { id: item.id, film_id: film.id } }

    it 'delete film from item' do
      sign_in user
      expect { subject }.to change(user.cart.cart_items, :count).by(-1)
    end

    it 'render template create' do
      sign_in user
      expect(subject).to render_template :create
    end

    it 'gets all films in the cart' do
      sign_in user
      expect(controller.films)
        .to include(have_attributes(film_id: film.id))
    end
  end
end
