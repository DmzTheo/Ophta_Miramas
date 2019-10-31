class PreparerlinterventionsController < ApplicationController
  def show
    @preparer = Preparerlintervention.friendly.find(params[:id])
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all

    add_breadcrumb @preparer.name, preparerlintervention_path(@preparer)
  end
end
