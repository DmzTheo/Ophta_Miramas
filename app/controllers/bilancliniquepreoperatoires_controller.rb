class BilancliniquepreoperatoiresController < ApplicationController

  def show
    @chirurgie = Chirurgie.friendly.find(params[:chirurgy_id])
    @bilan = @chirurgie.bilancliniquepreoperatoire
    # request_slug = params[:id]
    # if request_slug != @bilan.slug
    #   return redirect_to chirurgy_bilancliniquepreoperatoire_path(@bilan), :status => :moved_permanently
    # end
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
    @chirurgies = Chirurgie.all
  end
end
