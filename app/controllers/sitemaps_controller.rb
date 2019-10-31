class SitemapsController < ApplicationController

  layout :false
  before_action :init_sitemap

  def index
    @bilans = Bilancliniquepreoperatoire.all
    @choisisses = Choisissezvotreimplant.all
    @consignes = Consignepostoperatoire.all
    @prepares = Preparerlintervention.all
    @pathologies = Pathologie.all
    @chirurgies = Chirurgie.all
  end

  private

  def init_sitemap
    headers['Content-Type'] = 'application/xml'
  end

end
