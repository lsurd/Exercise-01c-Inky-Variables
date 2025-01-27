/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
 
 Variable Checking: 
 equality: "Spot" == "Spot" (spot equals spot)
 not equality: 1 != 2 (one is not equal to two)
 Greater: >
 Less: <
 greater or equal: >=
 less or equal: <=
 
*/

VAR health = 5
VAR pet_name = ""
VAR torches = 0
VAR coin_tail = ""
VAR Slime_name = ""
VAR coin = 1


-> memory

== memory ==
Before you stands the cavern of Josh. You wish your childhood pet was with you now. The cave might be less intimidating then. What was your pets name? 
* [Charlie] 
~ pet_name = "Charlie" 
-> cave_mouth
*[Susan]
~ pet_name = "Susan"
-> cave_mouth
* [Spot]
~ pet_name = "Spot"
-> cave_mouth

-> cave_mouth


== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now.

You have {torches} torches

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
{ pet_name == "Spot": Spot would love it here in the west| } While reminiscing about your beloved pet you hear a quiet squelch around the corrner.
* [follow the sound] -> slime_friend
+ [Go Back] -> cave_mouth
-> END

== slime_friend == 
Peeking around the corrner you find a small green gelatinous creature in a small nook of the cavern. It seems to be whimpering. 
* [go towards the creature and comfort it] -> new_friend
* [turn away, who knows what this thing is capable of] -> next_enterance

== new_friend ==
Though the creature lacks eyes, it seems to notice your presence and stops whimpering. As you move around the cavern you notice it follows where you go. Though it's no {pet_name} it seems to be just what you needed! Give your new companion a name? 
* [Slime, a simple and to the point name]
~ Slime_name = "Slime"
->next_enterance
* [Glorpo, a silly name for a silly guy]
~ Slime_name = "Glorpo"
-> next_enterance
*[Kevin.] 
~ Slime_name = "Kevin"
-> next_enterance

You begin towards the next area {new_friend:You leave with {Slime_name} towards the next area.} 


==next_enterance==
{not new_friend: You begin towards the next area.} {new_friend:With {Slime_name} at your side anything felt possible, as you move towards the next area.} 
->END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room. Do you take a souvenir? 
* [Take a coin, a single one won't be missed. You have {coin}] -> take_coin
* [Leave them be.] -> no_coin


== take_coin == 
You pick up the coin and roll it between your fingers. The metal is cold and heavy in your hand, and seems to be real gold. You look to one side which displays the head of an older regal looking man. Meanwhile the other side has...what exactly is that? 
* {coin==1} [A swirling pattern with a texture that mimics that of snake scales after molting]
~ coin_tail = "A swirling pattern with a texture that mimics that of snake scales after molting"
-> coin_machine
* {coin==1}[A symbol, seemingly a sun with flames pouring out the sides of each edge]
~ coin_tail = "A symbol, seemingly a sun with flames pouring out the sides of each edge"
-> coin_machine


== no_coin ==
You ignore the allure of the golden coins, and instead focus on further exploration of the cave. As you travel further and further you notice a gently lit opening. A soft blue light radiating from it. 
* [Walk towards the glowing cavern. Surely there's more to be learned from the newest opening] -> glowing_opening
+ [stand back and take a moment to think of your options] 
-> DONE

== glowing_opening ==
You come across a plethora of beautiful glowing blue stones. The closer you get the more you feel a soft, pleasant, cooling sensation on your skin. 
->END

== coin_machine ==
You're quickly ripped from your own thoughts as you look away from the coin's tail and notice a new door with a small slot beside it. The door looks heavy, made of a dark oak, and golden metal workings. 
* [walk towards the door placing the coin in the slot] -> open_door 
* [search for another way out]
-> DONE

== open_door ==
You hear the coin fall onto what seems to be a pile of similar metals, and the door creaks open. You're met with another opening, another room, housing nothing but a simple silver pendant on a pedestal at the center. 
-> END















-> END