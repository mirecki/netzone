# frozen_string_literal: true

class FilmsController < ApplicationController
  before_action :set_film, only: [:show]
  helper_method :recent_films

  after_action :register_visit, only: [:show]

  def index
    if params['search']
      @filter = params['search']['studios'].concat(params['search']['categories']).flatten.reject(&:blank?)
      @films = @filter.empty? ? Film.active : Film.active.tagged_with(@filter, any: true)
    else
      @films = Film.active
    end
    @pagy, @films = pagy(@films)
  end

  def show
    authorize @film
    set_page_options
  end

  def recent_filmss
    [] if recently.none?
    Film.where(id: recently)
  end

  private

  def set_film
    @film = Film.find(params[:id])
  end

  def recently
    session[:viewed_films] ||= []
  end

  def register_visit
    session[:viewed_films] ||= []
    session[:viewed_films] =
      ([@film.id] + session[:viewed_films])
      .uniq
      .take(3)
  end

  def set_page_options
    set_meta_tags @film.slice(:title, :description, :keywords)
  end
end
