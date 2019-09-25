class BilancliniquepreoperatoiresController < ApplicationController
  def show
    @bilan = Bilancliniquepreoperatoire.find(params[:id])
  end
end
