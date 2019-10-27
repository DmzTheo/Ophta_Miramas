class ChoisissezvotreimplantsController < ApplicationController
  def show
    @choisissez = Choisissezvotreimplant.friendly.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
  end
end
