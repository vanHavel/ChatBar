//
//  touchHack.m
//  ChatBar
//
//  Created by Lukas Huwald on 08.03.17.
//  Copyright © 2017 Lukas Huwald.
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at

//  http://www.apache.org/licenses/LICENSE-2.0

//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import <Foundation/Foundation.h>
#import "touchHack.h"

@implementation TouchHack

// reference to window controller that creates chat touchbar
NSWindowController * _wc;

// initializer
- (id)init:(NSWindowController *)wc {
    self = [super init];
    _wc = wc;
    return self;
}

// hack to add chat icon to command strip
- (void) addToStrip {
    DFRSystemModalShowsCloseBoxWhenFrontMost(YES);
    NSCustomTouchBarItem *chat =
    [[NSCustomTouchBarItem alloc] initWithIdentifier:stripIdentifier];
    chat.view = [NSButton buttonWithTitle:@"\U0001F4AC" target:_wc action:@selector(chatPressed)];
    [NSTouchBarItem addSystemTrayItem:chat];
    DFRElementSetControlStripPresenceForIdentifier(stripIdentifier, YES);
}

@end


