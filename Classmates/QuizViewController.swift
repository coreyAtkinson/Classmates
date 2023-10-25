//
//  QuizViewController.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/16/23.
//

import UIKit

class QuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var viewOutlet: UIButton!
    var i : Int!
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
                errorOutlet.text = ""
            }
            else if h == "brown"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .brown))
                errorOutlet.text = ""
            }
            
            else if h == "black"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .black))
                errorOutlet.text = ""
            }
            else if h == "red"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .red))
                errorOutlet.text = ""
            }
            else if h == "red"
            {
                classmates.append(Classmate(name: n, age: Int(a) ?? 0, hair: .red))
                errorOutlet.text = ""
            }
            else
            {
                print("error")
            }
            hello.classmates1 = classmates
            tableOutlet.reloadData()
            
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        i = indexPath.row
      performSegue(withIdentifier: "toDisplay", sender: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc2 = segue.destination as! FinalViewController
        
//        nvc2.name = classmates[i].name
   //     nvc2.age = classmates[i].age
   //     nvc2.hair = classmates[i].hair
        
    }
    
    @IBAction func viewAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toDisplay", sender: nil)
    }
}
