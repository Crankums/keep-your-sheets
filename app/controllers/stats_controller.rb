class StatsController < ApplicationController

    # testing, should only be accessible from character creation
    get '/stats/new' do
        erb :'/stats/new'
    end
    
    get '/stats' do
        # were you looking for a specific character? click here to go back or here to sign up
    end

    get '/stats/:id' do
        erb :'/stats/show'
    end

    post '/stats/:id' do
    end

    get '/stats/:id/edit' do
        erb :'/character/edit'
    end

    patch '/stats/:id' do
    end
end
