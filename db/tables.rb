create_table :stats do |t|
    t.integer :might
    t.integer :agility
    t.integer :endurance
    t.integer :guile
    t.integer :wit
end

create_table :characters do |t|
    t.string :name
    t.string :race
    t.string :class
 end