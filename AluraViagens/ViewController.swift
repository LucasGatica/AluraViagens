//
//  ViewController.swift
//  AluraViagens
//
//  Created by lucas gatica on 14/06/24.
//

import UIKit

class ViewController: UIViewController{
    

    @IBOutlet weak var viagensTableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viagensTableVIew.dataSource = self
        viagensTableVIew.delegate = self
    }
    
    

}


extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "Viagem \(indexPath.row)"
        return cell
    }
    
}	


extension ViewController: UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
}

