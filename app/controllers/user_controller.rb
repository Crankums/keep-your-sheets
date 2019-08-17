class UserController < ApplicationController

    get '/users/new' do
        erb :'users/new'
    end

    
    get '/users/:id' do
        @user = current_user
        erb :'users/show'
    end

    post '/users' do
        @user= User.create(params[:id])
    end

    get '/users/:id/edit' do
        erb :'users/edit'
    end

    patch '/users/:id' do
    end
end
