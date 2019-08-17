class SessionsController < ApplicationController
    
    get '/login' do
        redirect '/characters/:id' if logged_in?
        @failed= false
        erb :'sessions/login'
    end
    
    post '/login' do
        user =User.find_by(username: params[:username])
        if !!user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to '/users/:id'
        else
            @failed= true
            erb :'sessions/login'
        end
    end

    get '/signup' do
        redirect '/users/:id' if logged_in?
        erb :'user/new'
    end

    get '/logout' do
        session.clear
    end

end