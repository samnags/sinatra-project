class UsersController < ApplicationController


  get '/users' do
    @users = User.all
    erb :'/users/index.html'
  end

  def show
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'/users/show.html'
  end

  post 'users' do 
    @user = User.new(params)
  end


end
