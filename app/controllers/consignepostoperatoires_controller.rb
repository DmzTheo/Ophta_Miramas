class ConsignepostoperatoiresController < ApplicationController
  def show
    @consigne = Consignepostoperatoire.friendly.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
    @chirurgies = Chirurgie.all
  end
end
