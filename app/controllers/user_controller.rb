class UserController < ApplicationController

    get '/user/new' do
        erb :'user/new'
    end

    get '/user/:id/edit' do
        erb :'user/edit'
    end

    get 'user/:id' do
        erb :'user/show'
    end


end
