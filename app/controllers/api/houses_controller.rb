class Api::HousesController < ApplicationController
  def create
    @house = House.new(
      address: params[:address] || "no address provided"
    )
    @coordinates = Geocoder.coordinates(@house.address)
    @house.latitude = @coordinates[0]
    @house.longitude = @coordinates[1]
    render 'show.json.jb'
  end
end
