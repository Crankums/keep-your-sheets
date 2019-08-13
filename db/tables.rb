create_table :stats do |t|
    t.integer :might
    t.integer :agility
    t.integer :endurance
    t.integer :guile
    t.integer :wit
    t.integer :character_id
end

create_table :character do |t|
    t.string :name
    t.string :race
    t.string :class
 end