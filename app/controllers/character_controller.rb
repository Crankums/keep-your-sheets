class CharacterController < ApplicationController

    get '/characters' do
        authenticate
        @char = current_user.characters
        erb :'characters/show'
    end

    get '/characters/new' do
        authenticate
        erb :'/characters/new'
    end

    post '/characters' do
        authenticate
        user = current_user
        user.characters.build(:char_name => params[:char_name], :race => params[:race], :char_class => params[:char_class])
        if user.save
            redirect "/characters"
        else
            @message = "There was a problem creating your character"
            erb :"characters/new"
        end
        redirect :'/stats/new'
    end

    get 'characters/:id/edit' do
        @char = Characters.find_by(user_id: params[:user_id])
        erb :'/character/edit'
    end

    patch 'characters/:id' do
        @char = Character.find_by(user_id: params[:user_id])
        @char.update(name: params[:name])
        redirect '/characters'
    end

    delete 'characters/:id' do
        @char = Characters.find_by(user_id: params[:user_id])
        @stats = Stats.find_by(character_id: params[:character_id])
        @char.destroy
        @stats.destroy
        redirect '/characters'
    end

end