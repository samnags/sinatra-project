class YelpController < ApplicationController

  get'/search' do
    client = Adapters::RestaurantCreator.new
    client.find_restaurant(city: params[:city], cuisine: params[:cuisine])
  end

end
