class UserController < ApplicationController

    get '/users/new' do
        erb :'users/new'
    end

    
    get '/users' do
        authenticate
        @user = current_user
        erb :'users/show'
    end

    # post '/users' do
    #     @user= User.create(params[:id], params)
    # end

    get '/users/:id/edit' do
        authenticate
        @user = current_user
        erb :'users/edit'
    end

    patch '/users/:id' do
        @user = current_user
        @user.update(name: => params[:name], age: => params[:age], city: => params[:city], state: => params[:state], bio: => params[:bio])
        if @user.save
            redirect to "/profile"
        else
            @message = "There was a problem updating your profile"
            erb :"user/edit"
    end
end
