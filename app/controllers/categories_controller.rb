# frozen_string_literal: true

class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    set_page_options
  end

  private

  def set_page_options
    set_meta_tags @category.slice(:title, :description, :keywords)
  end
end