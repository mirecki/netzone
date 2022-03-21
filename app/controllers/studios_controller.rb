# frozen_string_literal: true

class StudiosController < ApplicationController
  before_action :set_studio, only: [:show]

  def index
    @studios = Studio.all
  end

  def show
    set_page_options
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
  end

  def set_page_options
    set_meta_tags @studio.slice(:title, :description, :bytitle)
    add_breadcrumb 'Home', :root_path, title: 'Home'
  end
end
