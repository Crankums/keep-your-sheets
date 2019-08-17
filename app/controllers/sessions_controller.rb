class SessionsController < ApplicationController
    
    get '/login' do
        redirect '/characters' if logged_in?
        @failed= false
        erb :'sessions/login'
    end
    
    post '/login' do
        user =User.find_by(username: params[:username])
        if !!user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to '/users'
        else
            @failed= true
            erb :'sessions/login'
        end
    end

    get '/signup' do
        redirect '/users' if logged_in?
        erb :'sessions/signup'
    end

    post '/users' do
        @user = User.create(username: params[:username],
            password: params[:username],
            email: params[:email],
            age: params[:age],
            city: params[:city],
            state: params[:state],
            bio: params[:bio])        
        if @user.errors.any?
            erb :'sessions/signup'
        else
            session[:user_id] = @user.id
            redirect '/profile'
        end
    end


    get '/logout' do
        session.clear
    end

end