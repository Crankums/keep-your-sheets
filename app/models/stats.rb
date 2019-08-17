class Stats < ActiveRecord::Base
    belongs_to :characters
    # validate numericality all stats
    # ensure text boxes are sanitized
    
end

# IMPORTANT!! Stats belong to a character, NOT A USER!! A USER DOES NOT HAVE A STAT BLOCK!