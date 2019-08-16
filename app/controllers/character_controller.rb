class CharacterController < ApplicationController

    get '/character' do
        authenticate
        @character = Character.find_by(params[:user_id])
        erb :'character/show'
    end

    get '/character/new' do
        # creates form that where the primary stats are made
        # redirects to stat creation
        # saves primary, assigns stats to character
        erb :'/character/new'

        # redirect :'/stats/new'
    end

    post '/character' do
    end

    get 'character/:id/edit' do
        # similar to new but edit field contain entire form, not in separate parts
        erb :'/character/edit'
    end

    patch 'character/:id' do
    end
end