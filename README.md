# ChatBar
Display Twitch Chat in MacBook Pro Touchbar. This way you can watch a stream in fullscreen mode and still follow the chat.

![demo image](https://github.com/vanHavel/ChatBar/blob/master/demo_image.jpg)

# Installation
Download the latest ChatBar.app file from the [releases page](https://github.com/vanHavel/ChatBar/releases), put it in your Applications folder, and run it. On first start, you probably have to do a right click & open, since the app is not signed. OSX 10.14 or newer is required.

# Usage
1. Start the program and enter the channel you want to join.
2. Press the chat icon (speech bubble) in the control strip of your touchbar.

# General Info
- Adding the chat icon to the control strip is handled by calls to a private, undocumented API(see [TouchBaer](https://github.com/a2/touch-baer)). 
- The application simulates a keypress of the shift key regularly to disable the touchbar sleep function.
- The connection is done uses websockets secured with TLS, provided by the [Starscream](https://github.com/daltoniam/Starscream) framework. 
