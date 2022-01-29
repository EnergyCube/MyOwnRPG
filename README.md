![Visitor count](https://shields-io-visitor-counter.herokuapp.com/badge?page=EnergyCube.MySoloRPG)
[![GitHub stars](https://img.shields.io/github/stars/EnergyCube/MySoloRPG)](https://github.com/EnergyCube/MySoloRPG/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/EnergyCube/MySoloRPG)](https://github.com/EnergyCube/MySoloRPG/network)
[![EnergyCube Tek Lib C](https://img.shields.io/badge/Energy%20Tek%20Lib%20C-v3.5%20(Edited%20for%20RPG)-blue)](https://github.com/EnergyCube/MySoloRPG)
# 🎮 MyRPG (aka. MySolorRPG)

## Goal
Using the knowledge accumulated during the first year in graphic programming, create a complete RPG that we would be proud of.\
The project is to be done in groups of 4, during 1 month at the same time as the other projects of the school.

###### Re-uploaded after a *strange* ban from Google search...

## Reality

My group, despite my constant efforts to get them going and help them, did nothing during the entire project and barely managed to add anything on the night of the project's completion. (Which I removed from this repo because it was not implemented in the game).

I found myself with an unbearable workload on top of having to do my other projects.
Thanks to the enthusiasm I had at the beginning for the project, I coded most of the core elements of the game in a 'generic' way, which allowed me to quickly add features with a hammer towards the end of the project. But because of that, **I'm not proud of my code** even though I was careful at the beginning.

## Compilation (Linux)

#### Step 0 (Does not apply if you are an Epitech student)

You must install the CSFML library in order to compile.

#### Step 1

As some content of the game (sound, music, sprite...) are probably copyrighted, **you have to extract the data.zip archive in data**.
(If you are the copyright holder, please contact me, I will immediately remove your content)

#### Step 2

```shell
make
```

## Features

📽️ Advanced Camera\
💥 Collisions (Based on Sprites)\
🖥️ Main, Settings, HTP, Pause and Inventory Menu\
🖱️ Button System (With sfText centered)\
🗃️ Configuration File (Support .ini/.cfg/.conf without Section)

## Contributing
No one is going to do it, but you can create pull requests.

## Sample
![Inventory Menu](https://raw.githubusercontent.com/EnergyCube/MySoloRPG/main/sample/inv_menu.gif)
![Main Menu](https://raw.githubusercontent.com/EnergyCube/MySoloRPG/main/sample/main_menu.gif)

## Project Restrictions
Here is the full list of authorized functions.\
from the CSFML library : All functions\
from the math library : All functions\
from the C library : malloc, free, memset, (s)rand, getline, (f)open, (f)read, (f)close, (f)write, opendir, readdir, closedir

## License
Since my game content is probably copyrighted I can't put a license on my whole project.\
Consider the lib, include and src files under **GPL-3.0 License**.
