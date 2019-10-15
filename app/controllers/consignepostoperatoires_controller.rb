class ConsignepostoperatoiresController < ApplicationController
  def show
    @consigne = Consignepostoperatoire.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
  end
end
