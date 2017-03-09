//
//  ChatMessage.swift
//  ChatBar
//
//  Created by Lukas Huwald on 07.03.17.
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


import Cocoa

class ChatMessage: NSObject {
    // user name and message content
    var user: String
    var content: String
    
    // initializer
    init(user: String, content: String) {
        self.user = user
        self.content = content
    }
    
    
    // assign color to username
    class func nameColor(username: String) -> NSColor {
        let index = abs(username.hash % 1000) / 100
        return colors[index]
    }
    
    // available colors
    static let colors: [NSColor] = [
        NSColor(colorLiteralRed: 0.5, green: 0.5, blue: 0, alpha: 1), // olive
        NSColor(colorLiteralRed: 1, green: 0, blue: 0, alpha: 1), // red
        NSColor(colorLiteralRed: 1, green: 1, blue: 0, alpha: 1), // yellow
        NSColor(colorLiteralRed: 0, green: 0.5, blue: 0, alpha: 1), // green
        NSColor(colorLiteralRed: 0, green: 1, blue: 0, alpha: 1), // lime
        NSColor(colorLiteralRed: 0, green: 0.5, blue: 0.5, alpha: 1), // teal
        NSColor(colorLiteralRed: 0, green: 1, blue: 1, alpha: 1), // aqua
        NSColor(colorLiteralRed: 0, green: 0, blue: 1, alpha: 1), // blue
        NSColor(colorLiteralRed: 0.5, green: 0, blue: 0.5, alpha: 1), // purple
        NSColor(colorLiteralRed: 1, green: 0.5, blue: 0, alpha: 1) // orange
    ]
    
}
