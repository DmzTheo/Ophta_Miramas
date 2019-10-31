class BilancliniquepreoperatoiresController < ApplicationController
  def show
    @bilan = Bilancliniquepreoperatoire.friendly.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all

    add_breadcrumb @bilan.name, bilancliniquepreoperatoire_path(@bilan)
  end
end
