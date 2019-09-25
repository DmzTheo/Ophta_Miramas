class ConsignepostoperatoiresController < ApplicationController
  def show
    @consigne = Consignepostoperatoire.find(params[:id])
  end
end
