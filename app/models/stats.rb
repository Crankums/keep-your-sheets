class Stats < ActiveRecord::Base
    belongs_to :characters
end

# IMPORTANT!! Stats belong to a character, NOT A USER!! A USER DOES NOT HAVE A STAT BLOCK!