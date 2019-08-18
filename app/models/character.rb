class Character < ActiveRecord::Base
    belongs_to :users
    has_one :stats
    
    # validate character name
    # validate race
    # validate character class

end