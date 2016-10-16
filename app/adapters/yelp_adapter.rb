module Adapters
  class YelpAdapter
    attr_reader :connection

    def initialize
      @connection = Yelp.client
    end

    def query(query = {})
      results = connection.search(query[:city], { term: query[:cuisine]})
      restaurants = results.businesses
      restaurant_objects = restaurants.map do |restaurant|
        Restaurant.new(name: restaurant.name, rating: restaurant.rating, address: restaurant.location.display_address)
      end
    end

  end
end
