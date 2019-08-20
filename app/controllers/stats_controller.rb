class StatsController < ApplicationController

    # testing, should only be accessible from character creation
    get '/stats/new' do
        authenticate
        @char = current_user.characters.last
        erb :'/stats/new'
    end

    get '/stats/:id' do
        authenticate
        user= current_user
        @stats = Stats.find_by_id(params[:id])
        @char = Character.find_by(id: @stats.character_id)
        erb :'/stats/show'
    end

    post '/stats' do
        authenticate
        char = current_user.characters.last
        stats=char.create_stats(params)
        if stats.save
            redirect to "/stats/#{stats.id}"
        else
            @message = "There was a problem creating your stat block"
            erb :'stats/new'   
        end
    end

    get '/stats/:id/edit' do
        authenticate
        @stats = Stats.find_by(id: params[:id])
        if !@stats
            @message= "You do not have access to this page"
           return erb :error
        else
            @char = Character.find_by_id(@stats.character_id)
        end
        erb :'/stats/edit'
    end

    patch '/stats/:id' do
        authenticate
        # binding.pry
        @stats = Stats.find_by(id: params[:id])
        @char = Character.find_by_id(@stats.character_id)
        @stats.update(
            might: params[:might],
            agility: params[:agility],
            endurance: params[:endurance],
            guile: params[:guile],
            wit: params[:wit],
            hit_points: params[:hit_points],
            per_day: params[:per_day],
            features: params[:features],
            bio: params[:bio])
        if @stats.save
            redirect to "/stats/#{@stats.id}"
        else
            @message = "There was a problem updating your stat block"
            erb :"/stats/edit"
        end
        
    end


    delete "/stats/:id" do
        authenticate
        @stats = Stats.find_by(id: params[:id])
        @char = Character.find_by_id(@stats.character_id)
        @stats.destroy
        @char.destroy
        redirect to "/characters"
    end


end