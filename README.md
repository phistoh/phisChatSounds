# phisChatSounds
A WoW addon which plays a notification when a message in the guild chat appears (like the sound when the player receives a whisper).

## Usage
This addon does its work automatically. Though you can customize when a louder notification sound gets played with `/pcs [sec]` where `[sec]` is the number of seconds between messages. The default value is 600 seconds (10 minutes).

## File Description
- **phisChatSounds.lua** contains the main code
- **phisChatSounds.toc** is the standard WoW table-of-contents file containing addon information

## Changes
- **1.1**: Now features a louder notification sound when the last guild message was received 600 seconds ago. (Customizable)
- **1.0**: Initial upload

## To-Do
- [ ] Option to disable the louder notification sound
- [ ] *(Maybe)* Options for which channels to include