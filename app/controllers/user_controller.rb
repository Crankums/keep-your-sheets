class UserController < ApplicationController

    get '/users/new' do
        erb :'users/new'
    end

    
    get '/users/:id' do
        authenticate
        @user = current_user
        erb :'/profile'
    end

    get '/users/:id/edit' do
        authenticate
        @user = current_user
        if params[:id] != current_user.id
            @message = "Please log in to edit your page"
            return erb :error
        end
        erb :'users/edit'
    end

    patch '/users/:id' do
        @user = current_user
        @user.update(username: params[:username], 
            age: params[:age], 
            city: params[:city], 
            state: params[:state], 
            bio: params[:bio])
        if @user.save
            redirect to "/profile"
        else
            @message = "There was a problem updating your profile"
            erb :"user/edit"
        end
    end
end
