//
//  ViewController.swift
//  VolumeControl
//
//  Created by Stian Martinsen on 10.06.15.
//  Copyright (c) 2015 Stian Martinsen. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    let pioneerApi = PioneerApi()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        var window = self.view.window!
        
        // Make titlebar transparent
        window.titlebarAppearsTransparent  = true
        
        // Make it possible to move the window by grabbing the background
        window.movableByWindowBackground  = true
        
        // Prevent resizing the window
        window.styleMask = NSClosableWindowMask | NSTitledWindowMask | NSMiniaturizableWindowMask
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func buttonEvent(sender: NSButton) {
        pioneerApi.toggleMute()
    }
    
    @IBAction func volumeSliderEvent(sender: NSSlider) {
        pioneerApi.setVolume(Int(sender.doubleValue))
    }
}

