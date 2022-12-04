//
//  ViewController.swift
//  GitCommitInfo
//
//  Created by Mayur Kant Tyagi on 04/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "CommitInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "CommitInfoTableViewCell")
        
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommitInfoTableViewCell") as! CommitInfoTableViewCell
        return cell
    }
    
    
    
    
}

