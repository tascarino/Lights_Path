### 2023-11-22 - 2.3hr: Music added
* Simple background music added

### 2023-11-15 - 3.5hr: Graphics Update cont
* Created new graphics for title and end screen
* Changed game name from "Puzzle Wiz" to "Light's Path"

### 2024-11-12 - 2.7hr: Graphics Update
* Re-textured the tilemap
* Created animation for door open on level completion and close on level enter
* Added glow effect to the light beam, title screen, and end screen

### 2024-11-09 - 1.8hr: Level Design
* Created two extra levels, all seemingly working correctly (will test with playtesters)
* Third level slightly larger in size
  
### 2024-11-08 - 1hr: Poster Work
* Began creating poster for demo day
* Began working on graphic for the game, as if it were on the cover of a physical copy of the game; planning on putting the graphic on the demo day poster
* 
### 2024-11-05 - 2.8hr: Polishing/Level Design
* Made a temporarily un-textured door that "opens" on level completion
* Ran into issue; Area2D was not showing up/working in game.
* Issue resolved: needed to update the main scene to run on game start; updated the name of a file, which for some reason made a duplicate, so I was working in the wrong file
* Made door lead to an area2d that opens the "Level2" scene
  
### 2024-11-01 - 3hr: Polishing Begin
* More work on graphics continued
* Adjusted character and mirror rotation speed
* Began thinking about ideas for 2 extra levels
  
### 2024-10-29 - 2hr: Rotation working in both directions
* Configured the rotating mirrors in both direction; slightly wonky but is working (something to attend to in polishing)

### 2024-10-28 - 3hr: Rotation Implemeted in Clockwise Direction
* Got the mirrors rotating in one direction (clockwise)

### 2024-10-25 - 5hr: Wheel Scrapped/Working on Rotations
* Scrapped the wheel concept; replaced with "pole" on the back of mirrors that the player can use to turn it
* Running into a roadblock with figuring out how to rotate the mirrors

### 2024-10-21 - 1.5hr: Puzzle Completion Indicator
* Created "Wall" and "EndPrism" scenes
* Updated room layout (temporary) so the level is completable without turning the mirrors
* "Installed" a light in the main level that lights up upon the beam hitting the end prism
  
### 2024-10-18 - 2hr: Figured out reflection
* Scrapped original beam script, trying out another [tutorial](https://www.youtube.com/watch?v=Mgk5eAvzo8k) that seems as though it will produce better results for what I'm working toward
* Only issue: tutorial is from 3 years ago, meaning the code will vary between versions
* Reflection is implemented and working; may change "prisms" to "mirrors" for the time being
* Beginning to work on "wheel" implementation, way to turn the reflectors, and the indicator for level completion

### 2024-10-15 - 5hr: Continuing Reflection Config
* Continuing work from last log
* Running into issues implementing this, mainly due to limited knowledge on Godot
* Got visibility to kind of work; however, reflected beam becomes visible too early, and have not figured out how to make beam hidden when not colliding
* May rework beam scene as a whole, trying to use _draw_line that I could not previously figure out.

### 2024-10-11 - 2hr: Started Working on Reflections
* Started testing ways to reflect the beams
* Current Idea: Invisible beams already set at each prism; if prism collided with, beam becomes visible, simulating reflection

### 2024-10-10 - 1hr: Added prisms
* Added prisms into the main game that collide with the beam, stopping it

### 2024-10-08 - 4hr: Beam Config
* Started testing code
* Ran into bug in main program; game freezes on open
* Created separate project to continue working on the mechanic; saving time from not immediately solving issue in main game
* Created working beam that collides/stops with walls (using mouse location to control to start with)
* Fixed freezing issue

### 2024-10-07 - 2hr: Beam Config
* More research on Raycasts
* Found better base code from [this video](https://www.youtube.com/watch?v=Hax0ZkIi7fM&t=271s)
  
### 2024-10-01 - 3.3hr: Set Boundaries and Started Beam Configuration
* Ran into issue with Collision layers when making boundaries
* Managed to resolve issue
* Started researching others' code in regards to lasers for the beams
* Started testing code from [this video](https://www.youtube.com/watch?v=CSLh97k8Gus&list=PLdMwc1hRlXvMDzWSmyfzGIcyaSd7BNH-U&index=10&t=15s) as a base to change later on
  
### 2024-09-28 - 1hr: Configured Movement
* Got top down movement implemented into Godot
  
### 2024-09-24 - 2.8hr: Created Repo
* Figured out how to create a repo
* Ran into a couple of "side quests" while doing so, including needing to make an SSN
* Uploaded base project onto itch.io
* STARTED: Making the base of top-down rooms/features

### 2024-09-13 - 7hr: Assets
* Worked on finding assets for both the player model and the tileset
* Found base models and tileset pack by Penzilla on itch.io; meshed a few together for player
* Made top-down walk cycle in each direction for the puzzle rooms
