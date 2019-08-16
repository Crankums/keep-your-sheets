class Character < ActiveRecord::Base
    belongs_to :users
    has_one :stats
end