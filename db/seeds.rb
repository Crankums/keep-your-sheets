User.delete_all
Character.delete_all
Stats.delete_all

grunk= User.create(username: "grunki", email: "grunk@gromail.com", password_digest: "juice", age: "30", city: "detroit", state: "MI", bio:"lawful grumpy")
blib= User.create(username:"blibble", email: "blib@blibmail.com", password_digest: "butts", age: nil, city: nil, state: nil, bio: nil)
lorb= User.create(username:"lorbnar", email: "ranbr@narblheim.com", password_digest: "neckbeard69", age: nil, city: nil, state: nil, bio: "I hate gnolls!")


blarg_the_brave= Character.create(char_name: "Blarg", race: "Dwarf", char_class: "Healer", user_id: 1)
freddy_the_feeble= Character.create(char_name: "Freddy", race: "Elf", char_class: "Warrior", user_id: 2)
pebbe_the_flatuent= Character.create(char_name: "Pebbe", race: "Avian", char_class: "Sorceror", user_id: 3)

blarg_stats= Stats.create(might: 4, agility: 5, endurance: 6, wit: 7, guile: 8, character_id: 1)
fred_stats= Stats.create(might: 10, agility: 11, endurance: 12, wit: 13, guile: 14, character_id: 2)
pebbe_stats= Stats.create(might: 15, agility: 16, endurance: 17, wit: 18, guile: 18, character_id: 3)