//
//  HomeViewController.swift
//  Bird Watcher
//
//  Created by Nina Huang on 1/26/19.
//  Copyright © 2019 Nina Huang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func activateDropDown(_ sender: UIButton) {
        parkButtons.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBOutlet var parkButtons: [UIButton]!
    
    @IBAction func channelButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: "homeToChannelSegue", sender: self)
    }
    
    @IBAction func grandCanyonButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: "homeToGrandCanyonSegue", sender: self)
    }
    
    @IBAction func yosemiteButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: "homeToYosemiteSegue", sender: self)
    }
    
    @IBAction func yellowstoneButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: "homeToYellowstoneSegue", sender: self)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



}

