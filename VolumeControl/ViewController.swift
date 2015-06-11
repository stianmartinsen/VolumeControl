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

