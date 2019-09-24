class PathologiesController < ApplicationController
  def index
    @pathologies = Pathologie.all
  end

  def show
    @pathologie = Pathologie.find(params[:id])
  end
end
