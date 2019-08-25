class Stats < ActiveRecord::Base
    belongs_to :characters
    
    validates :might, :agility, :endurance, :guile, :wit, :hit_points, :per_day, presence: true
    validates :might, :agility, :endurance, :guile, :wit, :hit_points, :per_day, numericality: { only_integer: true }
    validates :features, :bio, presence: true, format: { with: /[a-z0-9()=+-,.!]+/, message: "can only contain letters, numbers, and [( ) = + - , . or !]"}
end

