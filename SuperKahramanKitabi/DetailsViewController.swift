//
//  DetailsViewController.swift
//  SuperKahramanKitabi
//
//  Created by yunus oktay on 21.02.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var selectedHeroName = ""
    var selectedHeroImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageView.image = UIImage(named: selectedHeroImageName)
        label.text = selectedHeroName
        
    }
    

    

}
