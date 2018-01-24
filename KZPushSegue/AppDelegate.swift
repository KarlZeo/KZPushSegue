//
//  AppDelegate.swift
//  KZPushSegue
//
//  Created by Zeo on 24/01/2018.
//  Copyright © 2018 Zeo. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    lazy var firstWC: FirstWindowController = {
        let wc = FirstWindowController()
        return wc
    }()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        self.firstWC.showWindow(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

