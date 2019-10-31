class PathologiesController < ApplicationController
  add_breadcrumb 'Pathologies', :pathologies_path

  def index
    @pathologies = Pathologie.all
  end

  def show
    @pathologie = Pathologie.friendly.find(params[:id])

    add_breadcrumb @pathologie.nom, pathology_path(@pathologie)
  end
end
