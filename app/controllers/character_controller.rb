class CharacterController < ApplicationController

    get '/characters/:id' do
        authenticate
        @character = Character.find_by(params[:user_id])
        erb :'character/show'
    end

    get '/characters/new' do
        # creates form that where the primary stats are made
        # redirects to stat creation
        # saves primary, assigns stats to character
        erb :'/characters/new'

    end

    post '/characters' do

        redirect :'/stats/new'
    end

    get 'characters/:id/edit' do
        @char = Characters.find_by(id: params[:id])
        @char.update(name: params[:name] )
        erb :'/character/edit'
    end

    patch 'characters/:id' do
    end

    delete 'characters/:id' do
        @char = Characters.find_by(id: params[:id])
        @char.destroy
        redirect '/characters'
    end

end