# phisChatSounds
A WoW addon which plays a notification when a message in the guild chat appears (like the sound when the player receives a whisper).

## Usage
This addon does its work automatically. Though you can customize when a louder notification sound gets played with `/pcs [sec]` where `[sec]` is the number of seconds between messages. The default value is 600 seconds (10 minutes).

## File Description
- **phisChatSounds.lua** contains the main code
- **phisChatSounds.toc** is the standard WoW table-of-contents file containing addon information

## Changes
- **1.1.4**: Update for Plunderstorm (10.2.6) (new interface number)
- **1.1.3**: Update for Chains of Domination (9.1.0) (new interface number)
- **1.1.2**: Fixed bug with servernames containing whitespaces
- **1.1.1**: It is now possible to disable the louder notification sound. Also the addon now ignores own messages.
- **1.1**: Now features a louder notification sound when the last guild message was received 600 seconds ago. (Customizable)
- **1.0**: Initial upload

## To-Do
- [x] Ignore own messages
- [x] Option to disable the louder notification sound
- [ ] Option panel in menu
- [ ] *(Maybe)* Options for other channels (party/raid/...) to include