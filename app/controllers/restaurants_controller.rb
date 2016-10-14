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
    binding.pry
  end

  post '/restaurants' do
    @restaurant = Restaurant.create(params)
    redirect "/restaurants/#{@restaurant.id}"
  end





end
