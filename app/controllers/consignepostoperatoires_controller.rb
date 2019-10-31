class ConsignepostoperatoiresController < ApplicationController
  def show
    @consigne = Consignepostoperatoire.friendly.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all

    add_breadcrumb @consigne.name, consignepostoperatoire_path(@consigne)
  end
end
