class StatsController < ApplicationController

    get '/stats/:id' do
        erb :'stats/show'
    end

    get '/stats/:id/edit' do
        erb :'/character/edit'
    end

end
