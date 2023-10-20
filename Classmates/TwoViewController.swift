//
//  TwoViewController.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/11/23.
//

import UIKit

class TwoViewController: UIViewController {
  
    var hello : ViewController!
    var classmates : [Classmate] = []
    var i = 1
    @IBOutlet weak var displayHairOutlet: UILabel!
    @IBOutlet weak var displayAgeOutlet: UILabel!
    @IBOutlet weak var displayNameOutlet: UILabel!
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var ageOutlet: UITextField!
    
    @IBOutlet weak var hairOutlet: UITextField!
    
    @IBOutlet weak var errorOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        displayNameOutlet.text = "\(classmates[0].name)"
        displayAgeOutlet.text = "\(classmates[0].age)"
        displayHairOutlet.text = "\(classmates[0].hair)"
        errorOutlet.text = ""
         
        

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
            errorOutlet.text = "invalad imput"
        }
        else if Int(ageOutlet.text!) ?? 0 == 0
        {
            errorOutlet.text = "invalad imput"
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
                print("error")
            }
    }
        hello.classmates1 = classmates
    }
    

    @IBAction func sortAction(_ sender: UIButton) {
        
     classmates =  classmates.sorted { $0.name.lowercased() < $1.name.lowercased() }
        
        
        
        displayNameOutlet.text = "\(classmates[0].name)"
        displayAgeOutlet.text = "\(classmates[0].age)"
        displayHairOutlet.text = "\(classmates[0].hair)"
        
        hello.classmates1 = classmates
        
    }
}
