//
//  FinalViewController.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/25/23.
//

import UIKit

class FinalViewController: UIViewController {
    var name: String!
    var age: Int!
    var hair: Hair!
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var ageOutlet: UILabel!
    @IBOutlet weak var hairOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOutlet.text = "\(name)"
        ageOutlet.text = "\(age)"
        hairOutlet.text = "\(hair)"

        // Do any additional setup after loading the view.
    }
    

  
}
