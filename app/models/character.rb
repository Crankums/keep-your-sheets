class Character < ActiveRecord::Base
    belongs_to :users
    has_many :stats
end