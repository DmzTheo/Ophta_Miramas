class PreparerlinterventionsController < ApplicationController
  def show
    @preparer = Preparerlintervention.find(params[:id])
  end
end
