//
//  AboutMeInformationViewController.swift
//  AboutMeApp
//
//  Created by Александр on 29.07.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    @IBOutlet var fotoImageView: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fotoImageView.layer.cornerRadius = fotoImageView.frame.width / 2
    }
}
