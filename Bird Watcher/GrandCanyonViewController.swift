//
//  GrandCanyonViewController.swift
//  Bird Watcher
//
//  Created by Nina Huang on 1/26/19.
//  Copyright © 2019 Nina Huang. All rights reserved.
//

import UIKit

class GrandCanyonViewController: UIViewController {
    
    @IBAction func backButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: "grandCanyonToHomeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

