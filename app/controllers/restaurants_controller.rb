class RestaurantsController < ApplicationController
  get '/restaurants' do
    @restaurants = Restaurant.all
    erb :'/restaurants/index.html'
  end

  get '/restaurants/new' do
    erb :'/restaurants/new.html'
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @users = User.all
    erb :'/restaurants/show.html'
  end

  post '/restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    user = User.find(params[:users_id])
    restaurant.users << user
    restaurant.save
    redirect "/restaurants/#{restaurant.id}"
  end

  post '/restaurants' do
    @restaurant = Restaurant.create(params)
    redirect "/restaurants/#{@restaurant.id}"
  end

end
