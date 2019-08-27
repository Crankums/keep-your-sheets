class SessionsController < ApplicationController
    
    get '/login' do
        redirect '/profile' if logged_in?
        @failed= false
        erb :'sessions/login'
    end
    
    post '/login' do
        user =User.find_by(username: params[:username])
        if !!user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to '/profile'
        else
            @failed= true
            erb :'sessions/login'
        end
    end

    get '/signup' do
        redirect '/profile' if logged_in?
        erb :'sessions/signup'
    end

    post '/users' do
        @user = User.create(username: params[:username],
            password: params[:password],
            email: params[:email],
            age: params[:age],
            city: params[:city],
            state: params[:state],
            bio: params[:bio])        
        if @user.errors.any?
            erb :'sessions/signup'
        else
            @user.save
            session[:user_id] = @user.id
            redirect '/profile'
        end
    end


    get '/logout' do
        "You have logged out"
        session.clear
        erb :"sessions/logout"
    end

end