class ChirurgiesController < ApplicationController
  add_breadcrumb 'Chirurgies', :chirurgies_path

  def index
    @chirurgies = Chirurgie.all
  end

  def show
    @chirurgie = Chirurgie.friendly.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all

    add_breadcrumb @chirurgie.nom, chirurgy_path(@chirurgie)
  end
end
