class ChirurgiesController < ApplicationController
  def index
    @chirurgies = Chirurgie.all
  end

  def show
    @chirurgie = Chirurgie.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
  end
end
