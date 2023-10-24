//
//  CazyCell.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/20/23.
//

import Foundation


import UIKit

public class CazyCell : UITableViewCell {
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    @IBOutlet weak var ageOutlet: UILabel!
    
    @IBOutlet weak var hairOutlet: UILabel!
    
    func configure(name: String, age: Int, hair: Hair)
    {
        nameOutlet.text = name
        ageOutlet.text = "\(age)"
        hairOutlet.text = "\(hair)"
    }
    
    
}
    
   
