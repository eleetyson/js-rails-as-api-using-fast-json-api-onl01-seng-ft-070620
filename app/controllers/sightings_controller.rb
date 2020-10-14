# passing in a second parameter indicating related objects to render
class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    options = { include: [:bird, :location] }
    render json: SightingSerializer.new(sighting, options)
  end
end
