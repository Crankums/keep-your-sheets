class StatsController < ApplicationController

    # testing, should only be accessible from character creation
    get '/stats/new' do
        authenticate
        @char = current_user.characters.last
        # binding.pry
        erb :'/stats/new'
    end

    get '/stats/:id' do
        authenticate
        user= current_user
        # binding.pry
        @stats = Stats.find_by_id(params[:id])
        @char = Character.find_by(id: @stats.character_id)
        erb :'/stats/show'
    end

    post '/stats' do
        authenticate
        char = current_user.characters.last
        stats=char.create_stats(params)
        if stats.save
            binding.pry
            redirect to "/stats/#{stats.id}"
        else
            @message = "There was a problem creating your stat block"
            erb :'stats/new'   
        end
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
