//
//  ChannelViewController.swift
//  Bird Watcher
//
//  Created by Nina Huang on 1/26/19.
//  Copyright © 2019 Nina Huang. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController {
    
    @IBAction func backButton(_ sender: UIButton) {
        performSegue(withIdentifier: "channelToHomeSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

