DARK SOULS API CLI PROJECT

I created this CLI project to pull data from a Dark Souls 3 API created by MugenMonkey.  The API consists of a database of weapons and armor for the video game Dark Souls 3(tm).  I've always loved the Dark Souls series because of their punishing difficulty, so I made this CLI to be a resource for gathering information on the weapons in the game.  The user submits a weapon type of their choosing, and gets back a list of all the weapons that match that type.  From there, the user can select one of those weapons to learn more about its stat requirements.

Prerequisites
To be safe, you will need the latest version of Ruby.  The bundler/setup should take care of most of what you need, but to be safe, you'll need to have access to the following gems:
'bundler/setup'
'net/http'
'open-uri'
'json'

Running the program

As simple as typing 'ruby bin/console' in your terminal and hitting Enter.

Authors
Kevin Britt

License
This project is licensed under the MIT License - see the LICENSE.md file for details

Acknowledgments
MugenMonkey
FlatIron School