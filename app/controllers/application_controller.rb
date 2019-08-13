class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, "porto_project"
    end

    get '/' do
        "Placeholder"
    end

end