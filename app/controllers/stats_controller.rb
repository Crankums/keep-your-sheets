class StatsController < ApplicationController

    # testing, should only be accessible from character creation
    get '/stats/new' do
        erb :'/stats/new'
    end

    get '/stats/:id' do
        @character = Character.find_by(params[:user_id])
        @stats = Stats.find_by(params[:character_id])
        erb :'/stats/show'
    end

    post '/stats' do
    end

    get '/stats/:id/edit' do
        erb :'/characters/edit'
    end

    patch '/stats/:id' do
    end
end
