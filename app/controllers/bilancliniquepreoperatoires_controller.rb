class BilancliniquepreoperatoiresController < ApplicationController
  def show
    @bilan = Bilancliniquepreoperatoire.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
  end
end
