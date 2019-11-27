class ChirurgiesController < ApplicationController
  def index
    @chirurgies = Chirurgie.all
  end

  def show
    @chirurgie = Chirurgie.friendly.find(params[:id])
    @chirurgies = Chirurgie.all
  end
end
