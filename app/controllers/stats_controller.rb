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
        binding.pry
    end

    get '/stats/:id/edit' do
        @stats = Stats.find_by(character_id: params[:character_id])
        erb :'/characters/edit'
    end

    patch '/stats/:id' do
        @stats = Stats.find_by(character_id: params[:character_id])
        @stats.update(
            might: params[:might],
            agility: params[:agility],
            endurance: params[:endurance],
            guile: params[:guile],
            wit: params[:wit],
            hit_points: params[:hit_points],
            features: params[:features],
            bio: params[:bio] 
        )
    end

end
