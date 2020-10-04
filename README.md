#Keep Your Sheets
Sinatra Portfolio Project for Flatiron School

Usage

Welcome to Keep Your Sheets, a web-based alternative for storing your character stats for the Caverns & Cockatrices role-playing game. Here, you will be able to see your ability scores, features, and character info, in a handy, low-resource format easy to view from anywhere.

First, create your account. The only required fields are your unique username, email, and a secure password. As other games are added to the application, the location fields will help you find other players in you area who are either looking for players or game-runners.
After creating your account, you'll be directed to your profile. Select "Characters" to begin creating your characters. You can return to your profile or character hub at any time by clicking the links at the top of the page. If you're currently participating in a campaign, put the name of it in the "Campaign" field, or leave the "None" value. Fill in the name for your character, then select the race and character class for your character.
Now, you're ready to fill out those stats. Following the rules of the game, roll 3 six-sided die, add the values and assign them as you see fit to the 5 main attributes, then fill out the "Features" and "Bio" fields and hit submit.
When it's time to view your characters, just head on over to the "Characters" link at the top of the page or in your profile, and select which one you want to view from the list.
If you need to edit your character or update your stats, just hit the "Edit" button on your character sheet, update the relevant fields and hit the "Update" button pull up your new stats. If you clicked "Edit" by mistake, just hit "Cancel" and head back to your "Stats" page. If you need to delete a character, just click the "Delete Character" button. Doing so will also delete their stat sheet as well. Deleting a stat sheet individually will not delete the rest of the character.

-The stats presented here are a homebrewed variety of character attributes commonly found in tabletop roleplaying games. They are not specific to any particular system, but rather are designed to reflect a typical style. The further development goal would be to feed in a list of attribute data into a "rules engine", which would then interpret and assign the various attributes and build a character sheet out of it. The process would take a small amount of fine tuning (ex. one system might use "damage capacity" in place of "hit points", which might get it put into the "weapons" area instead of the "life/hit points/etc" area).
Note: This does NOT perform any action in your game for you! This is simply a place to keep track of your character stats and make modifications as your game progresses. That is why there is no dice rolling utility or RNGs built in to perform any actions for you. Values are changeable, so you're given only minimal limitations on your ability to change them. It is between you, your party, and your DM to deal with if you make changes to your character or their stats that are not dictated by game rules or circumstances.

Creation notes: need to create `Item` MVC (which will have its own programmatic arena, but no way to actually call its views, as it's actually part of `Stats`). --actually, it will be a part of `Character`, as characters have weapons, not their stats.
