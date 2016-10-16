module Adapters
  class YelpAdapter
    attr_reader :connection

    def initialize
      @connection = Yelp.client
    end

    def query(query = {})
      results = connection.search(query[:city], { term: query[:cuisine]})
    end

  end
end

#
# class RestaurantAdapter
#
#   attr_reader :city, :cuisine
#
#   def initialize(city, cuisine)
#     binding.pry
#     @city = city
#     @cusine = cuisine
#     response = Yelp.client.search()
#   end
#
#
