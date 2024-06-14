//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by lucas gatica on 14/06/24.
//

import UIKit

class HomeTableViewHeader: UIView {
    
    @IBOutlet weak var bannerView: UIView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var greenView: UIView!
    
    func configuraView(){
        
        headerView.backgroundColor = UIColor(red:30.0/255, green:59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
    
}
