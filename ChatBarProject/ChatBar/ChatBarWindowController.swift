//
//  ChatBarWindowController.swift
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

@available(OSX 10.12.2, *)
// this class manages the touchbar displaying chat content
class ChatBarWindowController: NSWindowController {
    
    // reference to model
    var cc : ChatConnection?
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

    // outlets of touchbar and its content
    @IBOutlet weak var chatUser: NSTextField!
    @IBOutlet weak var chatMessage: NSTextField!
    @IBOutlet weak var chatBar: NSTouchBar!
    
    // start a chat connection
    func startChat(username : String, pw : String, channel : String) {
        if self.cc == nil {
            self.cc = ChatConnection(wc: self)
        }
        self.cc!.connect(username: username, pw: pw, channel: channel)
    }
    
    // update touchbar content
    func updateBar(msg: ChatMessage) {
        //simulate button press of shift key to wake up touchbar
        let source = CGEventSource(stateID: CGEventSourceStateID.hidSystemState)
        let keyDown = CGEvent(keyboardEventSource: source, virtualKey: 0x38, keyDown: true)
        let keyUp = CGEvent(keyboardEventSource: source, virtualKey: 0x38, keyDown: false)
        let location = CGEventTapLocation.cghidEventTap
        keyDown!.post(tap: location)
        keyUp!.post(tap: location)
        // get username color
        chatUser.textColor = ChatMessage.nameColor(username: msg.user)
        chatMessage.textColor = NSColor(colorLiteralRed: 1, green: 1, blue: 1, alpha: 1)
        // update touchbar
        chatUser.stringValue = msg.user
        chatMessage.stringValue = msg.content
    }
    
    // update status field in view
    func updateStatus(description: String) {
        let vc = self.contentViewController as! ViewController
        vc.errorField.stringValue = description
    }
    
    // on chat icon press in command strip
    func chatPressed() {
        // get field content from view
        let vc = self.contentViewController as! ViewController
        let username = vc.chatUser.stringValue.lowercased()
        let pw = vc.chatPw.stringValue
        let channel = vc.chatChannel.stringValue.lowercased()
        // start chat connection and open special touchbar
        startChat(username: username, pw: pw, channel: channel)
        NSTouchBar.presentSystemModalFunctionBar(chatBar, systemTrayItemIdentifier: "strip")
    }
    
    // stop chat connection
    func stopChat() {
        if self.cc != nil {
            self.cc!.close()
            self.cc = nil
        }
    }
}
