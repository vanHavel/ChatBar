//
//  touchHack.h
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

#ifndef touchHack_h
#define touchHack_h

#import <Cocoa/Cocoa.h>
#import <AppKit/AppKit.h>

// private API functions
extern void DFRElementSetControlStripPresenceForIdentifier(NSString *, BOOL);
extern void DFRSystemModalShowsCloseBoxWhenFrontMost(BOOL);

// global chat icon identifier
static const NSTouchBarItemIdentifier stripIdentifier = @"strip";

// added interface functions
@interface NSTouchBarItem ()

+ (void)addSystemTrayItem:(NSTouchBarItem *)item;

@end

@interface NSTouchBar ()

+ (void)presentSystemModalTouchBar:(NSTouchBar *)touchBar systemTrayItemIdentifier:(NSTouchBarItemIdentifier)identifier NS_AVAILABLE_MAC(10.14);

@end

// public interface of hack
@interface TouchHack : NSObject
- (void) addToStrip;
- (id) init:(NSWindowController *)wc;
@end


#endif /* touchHack_h */
