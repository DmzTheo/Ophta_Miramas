class PathologiesController < ApplicationController
  def index
    @pathologies = Pathologie.all
  end

  def show
    @pathologie = Pathologie.friendly.find(params[:id])
  end
end
