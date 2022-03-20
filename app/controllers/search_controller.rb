# frozen_string_literal: true

class SearchController < ApplicationController
  before_action :set_page_options

  def index
    @films = text_search
  end

  private

  def search_params
    params.permit(:query)
  end

  def text_search
    search_text = ['%', search_params[:query].strip, '%'].join
    Film.where('title ILIKE ?', search_text)
  end

  def set_page_options
    set_meta_tags title: 'Search'
  end
end
