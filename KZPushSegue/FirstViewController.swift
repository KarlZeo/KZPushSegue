//
//  FirstViewController.swift
//  KZPushSegue
//
//  Created by Zeo on 24/01/2018.
//  Copyright © 2018 Zeo. All rights reserved.
//

import Cocoa

class FirstViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = NSColor.blue.cgColor
    }
    
    override init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @IBAction func pushAction(_ sender: Any) {
        let vc = SecondViewController(nibName: nil, bundle: nil)
        let sugue = KZPushSegue(identifier: NSStoryboardSegue.Identifier(rawValue: "Second"), source: self, destination: vc)
        sugue.perform()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var nibName: NSNib.Name? {
        return NSNib.Name(rawValue: "FirstViewController")
    }
    
    override func awakeFromNib() {
        
    }
    
}
