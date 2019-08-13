class SessionsController < ApplicationController
    
    get '/login' do
        erb :login
    end

    get '/signup' do
        erb :'user/new'
    end

    get '/logout' do
        session.clear
    end

end