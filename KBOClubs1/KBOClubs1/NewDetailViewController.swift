//
//  NewDetailViewController.swift
//  KBOClubs1
//
//  Created by Seungseop Lee on 2/29/24.
//

import UIKit

class NewDetailViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    
    var labelText: String?
    var backgroundColor: UIColor?
    var labelColor: UIColor?
    var logoImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailSetup()
    }
    func detailSetup() {
        if let color = backgroundColor {
            backgroundLabel.backgroundColor = color
        }
        if let text = labelText {
            detailLabel?.text = text
        }
        if let color = labelColor {
            detailLabel?.textColor = color
        }
        if let image = logoImage {
            logoImageView.image = image
        }
    }

}


