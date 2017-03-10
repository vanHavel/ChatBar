# ChatBar
Display Twitch Chat in MacBook Pro Touchbar. This way you can watch a stream in fullscreen mode and still follow the chat.

# Installation
I currently don't provide a bundled app for this project. Your only way to run it is to build it yourself using XCode(If you have no idea how to achieve this, it's probably not worth learning it for the purpose of this gimmick alone).

# Usage
1. Generate an oauth token for chat login using the [TwitchChat oauth Password Generator](https://twitchapps.com/tmi/)
2. Start the program and enter your Twitch username, oauth token, and channel you want to join.
3. When you are ready, press the chat icon (speech bubble) in the control strip of your touchbar

# General Info
- Connection is secured using SSL, and certificates are verified by SSL pinning. This is handled by the [Starscream](https://github.com/daltoniam/Starscream) framework. However, I am no network security expert and can not vouch for the correctness of mine ortheir implementation from a security standpoint.
- Adding the chat icon to the control strip is handled by calls to a private, undocumented API(see [TouchBaer](https://github.com/a2/touch-baer)). The functionality might be removed in a future release of Apple's frameworks or (hopefully) make it's way into a public API.
