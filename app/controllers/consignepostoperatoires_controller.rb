class ConsignepostoperatoiresController < ApplicationController
  def show
    @chirurgie = Chirurgie.friendly.find(params[:chirurgy_id])
    @consigne = @chirurgie.consignepostoperatoire
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
    @chirurgies = Chirurgie.all
  end
end
