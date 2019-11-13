class PagesController < ApplicationController
  add_breadcrumb 'home', :root_path
  # add_breadcrumb 'pages', :pages_path

  def telechargements
    add_breadcrumb 'telechargements', pages_telechargements_path
  end

  def home
    add_breadcrumb 'home', root_path
  end

  def equipe
    add_breadcrumb 'equipe', pages_equipe_path
  end

  def lunettes
    add_breadcrumb 'lunettes', pages_lunettes_path
  end

  def robots
    respond_to :text
  end
end
