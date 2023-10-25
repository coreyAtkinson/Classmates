//
//  ViewController.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    var classmates1 : [Classmate] = [Classmate(name: "Corey", age: 16, hair: .brown), Classmate(name: "Claire", age: 18, hair: .chestnut), Classmate(name: "Olivia", age: 17, hair: .brown), Classmate(name: "Natilie", age: 18, hair: .brown), Classmate(name: "Mykaela", age: 17, hair: .brown)]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
    }
    
    @IBAction func tableAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toTable", sender: self)
        
        
        
    }
    @IBAction func startAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toMain", sender: self)
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toMain"
        {
    let nvc = segue.destination as!TwoViewController
            nvc.hello = self
            nvc.classmates = classmates1
        }
        
     else
        {
     let nvc2 = segue.destination as! QuizViewController
        
         nvc2.hello = self
         nvc2.classmates = classmates1
     
     }
       
    }
    
}
