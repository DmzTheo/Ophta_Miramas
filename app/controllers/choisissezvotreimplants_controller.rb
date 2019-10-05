class ChoisissezvotreimplantsController < ApplicationController
  def show
    @choisissez = Choisissezvotreimplant.find(params[:id])
  end
end
