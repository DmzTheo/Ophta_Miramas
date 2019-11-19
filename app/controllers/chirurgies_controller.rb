class ChirurgiesController < ApplicationController
  def index
    @chirurgies = Chirurgie.all
  end

  def show
    @chirurgie = Chirurgie.friendly.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
    @chirurgies = Chirurgie.all
  end
end
