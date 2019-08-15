class UserController < ApplicationController

    get '/user/new' do
        erb :'user/new'
    end

    post '/user' do
        @user= User.create(params[:id])
    end

    get '/user/:id/edit' do
        erb :'user/edit'
    end

    patch '/user/:id' do
    end
    
    get 'user/:id' do
        erb :'user/show'
    end


end
