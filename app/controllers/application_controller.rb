class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, Proc.new { File.join(root, "../views/") }
        enable :sessions
        set :session_secret, "porto_project"
    end

    get '/' do
        "Placeholder"
    end
    
end