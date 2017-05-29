# ChatBar
Display Twitch Chat in MacBook Pro Touchbar. This way you can watch a stream in fullscreen mode and still follow the chat.

![demo image](https://github.com/vanHavel/ChatBar/blob/master/demo_image.jpg)

# Installation
Download the ChatBar.app file, put it in your Applications folder, and run it. On first start, you probably have to do a right click & open, since the app is not signed.

# Usage
1. Generate an oauth token for chat login using the [TwitchChat oauth Password Generator](https://twitchapps.com/tmi/)
2. Start the program and enter your Twitch username, oauth token, and channel you want to join (You can paste the oauth token by right click + paste).
3. When you are ready, press the chat icon (speech bubble) in the control strip of your touchbar

# General Info
- Adding the chat icon to the control strip is handled by calls to a private, undocumented API(see [TouchBaer](https://github.com/a2/touch-baer)). The functionality might be removed in a future release of Apple's frameworks or (hopefully) make its way into a public API.
- The application simulates a keypress of the shift key regularly to disable the touchbar sleep function.
- Connection is secured using SSL, and certificates are verified by SSL pinning. This is handled by the [Starscream](https://github.com/daltoniam/Starscream) framework. However, the documentation of this feature was a bit lacking, so use at your own risk.
