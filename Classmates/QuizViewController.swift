//
//  QuizViewController.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/16/23.
//

import UIKit

class QuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var errorOutlet: UILabel!
    @IBOutlet weak var hairOutlet: UITextField!
    @IBOutlet weak var ageOutlet: UITextField!
    @IBOutlet weak var nameOutlet: UITextField!
    var hello : ViewController!
    var classmates : [Classmate] = []
    @IBOutlet weak var tableOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableOutlet.delegate = self
        tableOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hello.classmates1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CazyCell
        
        cell.configure(name: classmates[indexPath.row].name, age: classmates[indexPath.row].age, hair: classmates[indexPath.row].hair)
        
        return cell
    }
  
    @IBAction func buttonAction(_ sender: UIButton) {
        
        
        var n = nameOutlet.text!
            var a = ageOutlet.text!
            var h = hairOutlet.text!
        if nameOutlet.text == "" || ageOutlet.text == "" || hairOutlet.text == "" {
            print("error")
            errorOutlet.text = "invalad imput"
        }
        else if Int(ageOutlet.text!) ?? 0 == 0
        {
            errorOutlet.text = "invalad imput"
        }
        else{
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
            hello.classmates1 = classmates
            tableOutlet.reloadData()
        }
    }
    
}
