//
//  BiographyViewController.swift
//  AboutMeApp
//
//  Created by Александр on 30.07.2024.
//

import UIKit

final class BiographyViewController: UIViewController {

    @IBOutlet var biographyLabel: UILabel!
    
    var biography: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackgroundColor()
        
        biographyLabel.text = biography
    }
}
