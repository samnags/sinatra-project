module Adapters
  class RestaurantCreator
    def connection
      @connection = Adapters::YelpAdapter.new
    end

    def find_restaurant(args)
       results = connection.query(city: args[:city], cuisine: args[:cuisine])       
    end
      # results = connection.query(city: params[:city], { term: params[:cuisine]} )

  end
end
