class CharacterController < ApplicationController

    get '/characters/:id' do
        authenticate
        @char = Character.find_by(params[:user_id])
        erb :'characters/show'
    end

    get '/characters/new' do
        erb :'/character/new'
    end

    post '/characters' do
        @char = Character.create(:char_name => params[:char_name], :race => params[:race], :char_class => params[:char_class])
        redirect :'/stats/new'
    end

    get 'characters/:id/edit' do
        @char = Characters.find_by(id: params[:id])
        @char.update(name: params[:name])
        erb :'/character/edit'
    end

    patch 'characters/:id' do
    end

    delete 'characters/:id' do
        @char = Characters.find_by(id: params[:id])
        @char.destroy
        redirect '/characters'
    end

end