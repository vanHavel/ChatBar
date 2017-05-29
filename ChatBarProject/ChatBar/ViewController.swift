//
//  ViewController.swift
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
// the main view controller. Most of the resposibility is delegated to the window controller, as it has access to the touchbar
class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    // text fields
    @IBOutlet weak var chatUser: NSTextField!
    @IBOutlet weak var chatPw: NSTextField!
    @IBOutlet weak var chatChannel: NSTextField!
    @IBOutlet weak var errorField: NSTextFieldCell!
    
    // stop chat connection when button pressed
    @IBAction func pushStop(_ sender: Any) {
        let wc : ChatBarWindowController = self.view.window?.windowController as! ChatBarWindowController
        wc.stopChat()
    }
    
    
    


}

