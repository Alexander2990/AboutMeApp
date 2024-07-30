//
//  AboutMeInformationViewController.swift
//  AboutMeApp
//
//  Created by Александр on 29.07.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var fotoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    // MARK: - Properties
    var photo: String!
    var name: String!
    var surname: String!
    var company: String!
    var department: String!
    var jobTitle: String!
    var biography: String!
    
    // MARK: - View Life Cycles
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fotoImageView.layer.cornerRadius = fotoImageView.frame.width / 2
        setupBackgroundColor()
        
        nameLabel.text = name
        surnameLabel.text = surname
        companyLabel.text = company
        departmentLabel.text = department
        jobTitleLabel.text = jobTitle
        
        fotoImageView.image = UIImage(named: photo)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let biographyVC = segue.destination as? BiographyViewController
        biographyVC?.biography = biography
    }
}
