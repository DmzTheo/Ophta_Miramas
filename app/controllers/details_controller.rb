class DetailsController < ApplicationController
  def show
    @chirurgies = Chirurgie.all
    @chirurgie = Chirurgie.friendly.find(params[:chirurgy_id])
    @detail = @chirurgie.detail
  end
end
