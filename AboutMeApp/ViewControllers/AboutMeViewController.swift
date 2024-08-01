//
//  AboutMeInformationViewController.swift
//  AboutMeApp
//
//  Created by Александр on 29.07.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var fotoImageView: UIImageView! {
        didSet {
            fotoImageView.layer.cornerRadius = fotoImageView.frame.width / 2
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    // MARK: - Properties
    var user: User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackgroundColor()
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.job.title
        departmentLabel.text = user.person.job.department.rawValue
        jobTitleLabel.text = user.person.job.jobTitle.rawValue
        
        fotoImageView.image = UIImage(named: user.person.photo)
        
        navigationItem.title = user.person.fullName
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let biographyVC = segue.destination as? BiographyViewController
        biographyVC?.biography = user.person.bio
    }
}
