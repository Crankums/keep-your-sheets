class CharacterController < ApplicationController

    get '/character' do
        # shows a list of chars, select one to see or edit stats
        erb :'character/show'
    end

    get '/character/new' do
        # creates form that where the primary stats are made
        # redirects to stat creation
        # saves primary, assigns stats to character
        erb :'/character/new'
    end

    get 'character/:id/edit' do
        # similar to new but edit field contain entire form, not in separate parts
        erb :'/character/edit'
    end
end