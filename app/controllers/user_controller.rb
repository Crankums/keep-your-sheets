class UserController < ApplicationController

    get '/users/new' do
        erb :'user/new'
    end

    
    get '/users/:id' do
        @user = current_user
        erb :'user/show'
    end

    post '/users' do
        @user= User.create(params[:id])
    end

    get '/users/:id/edit' do
        erb :'user/edit'
    end

    patch '/users/:id' do
    end
end
