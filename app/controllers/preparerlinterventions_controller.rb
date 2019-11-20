class PreparerlinterventionsController < ApplicationController
  def show
    @chirurgie = Chirurgie.friendly.find(params[:chirurgy_id])
    @preparer = @chirurgie.preparerlintervention
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
    @chirurgies = Chirurgie.all
  end
end
