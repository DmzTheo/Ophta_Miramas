class ChirurgiesController < ApplicationController
  def index
    @chirurgies = Chirurgie.all
  end

  def show
    @chirurgie = Chirurgie.find(params[:id])
  end
end
