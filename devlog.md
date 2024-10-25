## 2024-10-25 - 5hr: Wheel Scrapped/Working on Rotations
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
