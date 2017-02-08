Project

This project is a game called Biddle, which is a box riddle game similar to that of Sokoban.
You have to work out how to hit each target without intruding on another box.
Once you select a box, you have to move it to a target and once it's on a target it cannot be moved.

Features

The game incorporates a number of features, each box object and target object is held in array lists, this is
useful as the objects have to be accessed individually and their states are changed once they hit the targets
on the boards.

You have to select the box by clicking the top left hand corner, the box is then highlighted and you navigate to 
the targets as follows: UP = 'i', DOWN = 'm', LEFT = 'j', RIGHT = 'k'.

The game incorporates sounds, pushMatrix, popMatrix, translations, rotations and polymorphism.

Challenges

The most difficult part was controlling every aspect of the game, at face value the game seems fairly straightforward
but I encountered a number of bugs along the way, particularly getting the box objects to behave in the way I needed 
them to.

I found this took a lot more thought and control code than previously believed.

Favourite Part

My favourite part of the project was overcoming all the issues, I learnt to stop trying to make super-efficient code to
start off with, I ended up re-arranging the code into the most basic form and then working to re-factor it, instead of 
getting it completely right first time, this project taught me a lot about my approach to tasks and I feel much better
informed. 

I'm most proud of the box objects moving and working individually as I had a lot of problems, in the end making separate
arraylists and using a number of boolean variables sought to resolve my issues.
