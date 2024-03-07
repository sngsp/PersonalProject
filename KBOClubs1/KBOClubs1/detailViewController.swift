//
//  DetailViewController.swift
//  KBOClubs1
//
//  Created by Seungseop Lee on 2/29/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var labelText: String?
    var backgroundColor: UIColor?
    var labelColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let color = backgroundColor {
            view.backgroundColor = color
        }
        if let text = labelText {
            detailLabel?.text = text
        }
        if let color = labelColor {
            detailLabel?.textColor = color
        }
        print(backgroundColor)
        print(labelColor)
        print(labelText)
    }
}
