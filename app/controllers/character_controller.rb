class CharacterController < ApplicationController

    get '/characters' do
        authenticate 
        @user = current_user 
        @char = current_user.characters
        erb :'characters/index'
    end

    get '/characters/new' do
        authenticate
        erb :'/characters/new'
    end

    post '/characters' do
        authenticate
        @user = current_user
        @char = @user.characters.build(params)
        if @char.save
            redirect '/stats/new'
        else
            @message = "There was a problem creating your character"
            return erb :"characters/new"
        end
        redirect '/stats/new'
    end

    get '/characters/:id/edit' do
        authenticate
        @user = current_user
        @char = @user.characters.find_by_id(params[:id])
        erb :'/characters/edit'
    end

    patch '/characters/:id' do
        authenticate
        @user = current_user
        @char = @user.characters.find_by_id(params[:id])
        authenticate_user(@char)
        @char.update(char_name: params[:char_name],
            race: params[:race],
            char_class: params[:char_name])
        if @char.save
            redirect to "/stats/#{@char.stats.id}"
        else 
            @message = "There was a problem updating your character"
            erb :"/character/edit"
        end
    end

    delete 'characters/:id' do
        @char = Characters.find_by(user_id: params[:user_id])
        @stats = Stats.find_by(character_id: params[:character_id])
        @char.destroy
        @stats.destroy
        redirect '/characters'
    end

end