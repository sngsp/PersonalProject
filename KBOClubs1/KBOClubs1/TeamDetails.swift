//
//  TeamDetails.swift
//  KBOClubs1
//
//  Created by Seungseop Lee on 2/29/24.
//

import UIKit

class TeamDetails: UIViewController {
    @IBOutlet weak var clubName: UILabel!
    
    @IBAction func tapDoosan(_ sender: UIButton) {
        clubName.text = "두산 베어스"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
