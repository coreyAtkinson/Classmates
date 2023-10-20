//
//  QuizViewController.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/16/23.
//

import UIKit

class QuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    var hello : ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hello.classmates1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CazyCell
        
        
        cell.nameOutlet.text = "\(hello.classmates1[indexPath.row].name)"
        cell.ageOutlet.text = "\(hello.classmates1[indexPath.row].age)"
        cell.hairOutlet.text = "\(hello.classmates1[indexPath.row].hair)"
        return cell
    }
  

}
