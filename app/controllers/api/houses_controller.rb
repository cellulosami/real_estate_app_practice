class Api::HousesController < ApplicationController
  def create
    @house = House.new(
      address: params[:address] || nil,
      description: params[:description] || nil,
      year_built: params[:year_built] || nil,
      square_feet: params[:square_feet] || nil,
      bedrooms: params[:bedrooms] || nil,
      bathrooms: params[:bathrooms] || nil,
      floors: params[:floors] || nil,
      availability: params[:availability] || nil,
      price: params[:price] || nil
    )
    if @house.address
      @coordinates = Geocoder.coordinates(@house.address)
      @house.latitude = @coordinates[0] || nil
      @house.longitude = @coordinates[1] || nil
    end
    @house.save
    render 'show.json.jb'
  end
end
