class StatsController < ApplicationController

    get '/stats/new' do
        authenticate
        @char = current_user.characters.last
        if !@char
            @message = "No stats without a character!"
            return erb :error
        end
        erb :'/stats/new'
    end

    get '/stats/:id' do
        authenticate
        user= current_user
        @stats = Stats.find_by_id(params[:id])
        if !@stats
            redirect to "/characters"
        end
        @char = Character.find_by(id: @stats.character_id)
        
        if user.id != @char.user_id
            @message = "You do not have access to this resource"
            return erb :error
        else
        erb :'/stats/show'
        end
    end

    post '/stats' do
        authenticate
        @char = current_user.characters.last
        @stats=@char.create_stats(params)
        if @stats.save
            redirect to "/stats/#{@stats.id}"
        else
            @message = "There was a problem creating your stat block"
            erb :'stats/new'   
        end
    end

    get '/stats/:id/edit' do
        authenticate
        @stats = Stats.find_by(id: params[:id])
        authenticate_user(@char = Character.find_by_id(@stats.character_id))
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
        @stats = Stats.find_by(id: params[:id])
        @char = Character.find_by_id(@stats.character_id)
        authenticate_user(@char)
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
        authenticate_user(@char)
        @stats.destroy
        @char.destroy
        redirect to "/characters"
    end
end