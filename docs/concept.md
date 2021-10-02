# Il gatto

## Game concept

The player will have to take care of a domestic cat by attending to their needs and making sure they stay healthy.

## The hub

The hub is the main screen where the player will be able to interact with the cat.

### Time scale

The game will keep track of its own time of day, which will advance at different rates depending on whether the game is running or not.

+ **Application opened on the foreground**: Faster pace to keep the player engaged, which will force them to interact more with the cat.
+ **Application closed or running on the background**: Real-time scale, so it's not too demanding when not playing.

### Cat's needs

#### Hunger

Hunger will steadily increase over time and will be satisfied by **feeding food** to the cat by giving them a *food dish*. Activities such as walking them out will also make them hungry.

Failing to satisfy hunger will decrease health until it kills them.

#### Thirst

Thirst, like with hunger, will steadily increase over time (and with activities) and will be satisfied by giving them **water** by giving them a *water dish*.

#### Hygene

Hygene will steadily decrease over time (and with activities), or by unattending the litter box, and can be increased by washing or brushing them. Failing to keep a good hygene will enworsen the cat's mood.

#### Mood

Mood indicates how content and happy is the cat. Having a sad cat will make them not eat and drink less, which will cause them to get eventually sick.

There are two kinds of conditions: Active and passive. 

+ **Active**: Directly alters the value.
+ **Passive**: Every tick alters the value.

If there are any passive negative conditions active, the positive ones are countered.

Conditions that decrease it:

+ **Lack of affection** (passive): Too much time passed since the last interaction.
+ **Starvation** (passive): Hunger or Thirst under 33% (not feeding them or giving them water).
+ **Lack of hygene** (passive): Hygene under 50% (not washing or brushing them).
+ **Unattended litter box** (passive): Not cleaning the litter box. Will have the adverse effect of making them sick.
+ **Getting into a fight** (active): During walks your cat might fight against another cat. Failing to withdraw them from the fight will stress them and get them hurt.
+ **Bathing** (active): Cats rarely like baths. It's an effective way of cleaning them but will take a toll on their mood.
+ **Annoyance** (active): Attempting to interact with them when eating, drinking or in the litter box (which will make them give up their current activity if annoyed twice). It can also occur when trying to play more than what they want.

Conditions that increase it:

+ **Showing affection** (active): Petting, playing and brushing them.
+ **Well fed** (passive): Hunger and Thirst over 75%.
+ **Eat** (active): Eating or drinking.
+ **Good hygene** (passive): Hygene over 75% (keeping a good hygene).

#### Health

The main variable which will decide the cat's fate. Reaching 0% will kill it and end the run, having to start from scratch.

Conditions that decrease it:

+ **Starvation**: Hunger or Thirst are at 0%.
+ **Unattended litter box**: Not cleaning the litter box will make them not evacuate and get sick.
+ **Getting into a fight**: Failing to withdraw the cat from a fight when walking. It will only reduce health down to 10% at maximum.

### Cat's behaviour

The cat will move freely and seek to satisfy their needs.

+ **Idle**: When the cat is content, they will roam aimlessly around the hub, occasionally stopping to take a nap. It will rarely meow, or even scratch the scratcher (if available).

+ **Seeking for food**: When either Hunger or Thirst go below 66%, at random, the cat will have a period of time where they'll roam around actively while meowing. After a while they might get tired (which will further decrease their mood) and stop for a while, but later will come back for more.

  After presenting them with what they need, they'll go straight for it.

+ **Bored**: When Mood goes below 66%, they'll start to seek for attention, actively roaming around while meowing and occasionally stopping to play with the furniture. Having scratchers will keep them from scratch the furniture until they reach 44%, at which point they'll go for the furniture anyways.

+ **Using the litter box**: From time to time, the cat will require to evacuate, at which point it'll go to the litter box and sit there until they're done. If the litter box is full, they will refrain from using it, not properly evacuating and getting sick. Immediately after having the litter box empty they'll use it (if needed).

### Cat interactions

The player can directly interact with the cat:

+ **Petting**: This can be done by tapping on the cat, which will either increase or decrease their mood based on what they're currenlty doing. In the case of mood increase, a cooldown will be applied.
+ **Brushing**: By using the *brush* on the inventory, an animation of the cat being brushed will play, increasing their mood and hygene. The mood increase will have a cooldown, and the brush will have a *use reduced*.
+ **Bathing**: By using the *soap* on the inventory, an animation of the cat being bathed will play, dramatically increasing their hygene while decreasing their mood.

### Inventory items

#### Consumables

These items can be directly used when pressing on their icon in the inventory. After pressing it, the inventory will close and the game will ask the player to tap on the cat in order to apply the consumable. Tapping anywhere else will cancel the action. These can either be single use or having multiple uses.

#### Droppables

These items, after having their icon in the inventory pressed, will appear as a ghost waiting for the player to drag them where they want it to be. Once the player releases the item, it will get placed on the ground. It won't be able to be placed on top of furniture or other props.

### Furniture

Furniture are decorative items from the hub which will be damaged when the cat plays with it. Damaged furniture will attract bugs and decrease the cat's hygene. It can be replaced at the cost of money.

### Economy

The player will have to manage their economy in order to be able to keep buying items for the cat. It will be tagged under "Cat's expenses".

Ways of making money:

+ **Pay day**: Once in a while the player will dedicate a small part of their salary to the cat.
+ **Selling items**: Going on walks will allow you to find items that can either be used or sold for money.

## Walking

Walking is a side activity which consists of taking a stroll with the cat. It cannot be paused and if the player exits the application, it'll be cancelled. After ending every walk session, a cooldown will be applied.

During walks the player will encounter:

+ **Garbage**: Garbage cans that have been tipped over from which the cat will try to eat from. They'll have to repeatedly tap the cat when approaching the garbage can in order to avoid them eating garbage. Failing to do so will decrease the cat's health, hygene and mood.
+ **Stray cats**: Other cats will also roam the streets and will try to get into a fight with your cat. Failing to withdraw your cat from the fight will make them fight, decreasing their health and mood dramatically.
+ **Items**: Items that can be picked up and later either used or sold for money.

After a while you'll go back home, ending the stroll.



