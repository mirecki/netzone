# frozen_string_literal: true

class MainController < ApplicationController
  def index
    @studios = Studio.limit(3)
    @hits = Film.active.hit.limit(8)

  end
end
