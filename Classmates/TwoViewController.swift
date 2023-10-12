//
//  TwoViewController.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/11/23.
//

import UIKit

class TwoViewController: UIViewController {
    var classmates : [Classmate] = [Classmate(name: "Corey", age: 16, hair: .brown), Classmate(name: "Claire", age: 18, hair: .chestnut), Classmate(name: "Olivia", age: 17, hair: .brown), Classmate(name: "Natilie", age: 18, hair: .brown), Classmate(name: "Mykaela", age: 17, hair: .brown)]
    var i = 1
    @IBOutlet weak var displayHairOutlet: UILabel!
    @IBOutlet weak var displayAgeOutlet: UILabel!
    @IBOutlet weak var displayNameOutlet: UILabel!
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var ageOutlet: UITextField!
    
    @IBOutlet weak var hairOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayNameOutlet.text = "\(classmates[0].name)"
        displayAgeOutlet.text = "\(classmates[0].age)"
        displayHairOutlet.text = "\(classmates[0].hair)"
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextAction(_ sender: UIButton) {
        
        if i < classmates.count{
            displayNameOutlet.text = "\(classmates[i].name)"
            displayAgeOutlet.text = "\(classmates[i].age)"
            displayHairOutlet.text = "\(classmates[i].hair)"
            i = i + 1
        }
        else
        {
            displayNameOutlet.text = "\(classmates[0].name)"
            displayAgeOutlet.text = "\(classmates[0].age)"
            displayHairOutlet.text = "\(classmates[0].hair)"
            i = 1
        }
        
        
    }
    
    @IBAction func addAction(_ sender: UIButton) {
        if nameOutlet.text == "" || ageOutlet.text == "" || hairOutlet.text == "" {
            print("error")
        }
        else{
            
        
        var n = nameOutlet.text!
            var a = ageOutlet.text!
            var h = hairOutlet.text!
            if h == "blonde"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .blonde))
            }
            else if h == "brown"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .brown))
            }
            else if h == "black"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .black))
            }
            else if h == "red"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .red))
            }
            else if h == "red"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .red))
            }
            else
            {
                print(error)
            }
    }
    }
    

}
