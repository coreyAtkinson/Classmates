//
//  ViewController.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
    }

    @IBAction func startAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toMain", sender: self)
        
        
        
    }
    
}

