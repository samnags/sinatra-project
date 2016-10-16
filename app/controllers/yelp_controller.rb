class YelpController < ApplicationController

  get'/search' do
    client = Adapters::RestaurantCreator.new
    @restaurants = client.find_restaurant(city: params[:city], cuisine: params[:cuisine])
    @restaurants.each(&:save)
    redirect "/restaurants"
  end

end
