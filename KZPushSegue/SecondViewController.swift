//
//  SecondViewController.swift
//  KZPushSegue
//
//  Created by Zeo on 24/01/2018.
//  Copyright © 2018 Zeo. All rights reserved.
//

import Cocoa

class SecondViewController: NSViewController {
    @IBOutlet weak var navBar: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = NSColor.red.cgColor
        self.navBar.wantsLayer = true
        self.navBar.layer?.backgroundColor = NSColor.gray.cgColor
    }
    
    override init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @IBAction func backAction(_ sender: Any) {
        self.dismissViewController(self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var nibName: NSNib.Name? {
        return NSNib.Name(rawValue: "SecondViewController")
    }
    
    override func awakeFromNib() {
        
    }
    
}
