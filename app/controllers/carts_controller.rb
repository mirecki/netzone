# frozen_string_literal: true

class CartsController < ApplicationController

  def destroy
    current_cart.destroy!
  end
end
