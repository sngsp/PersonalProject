//
//  ViewController.swift
//  KBOClubs1
//
//  Created by Seungseop Lee on 2/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var doosanButton: UIButton!
    @IBOutlet weak var hanwhaButton: UIButton!
    @IBOutlet weak var kiaButton: UIButton!
    @IBOutlet weak var kiwoomButton: UIButton!
    @IBOutlet weak var ktButton: UIButton!
    @IBOutlet weak var lgButton: UIButton!
    @IBOutlet weak var lotteButton: UIButton!
    @IBOutlet weak var ncButton: UIButton!
    @IBOutlet weak var samsungButton: UIButton!
    @IBOutlet weak var ssgButton: UIButton!
    @IBOutlet weak var mainLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        mainLogo.image = #imageLiteral(resourceName: "kboLogo")
        doosanButton.layer.cornerRadius = 10
        hanwhaButton.layer.cornerRadius = 10
        kiaButton.layer.cornerRadius = 10
        kiwoomButton.layer.cornerRadius = 10
        ktButton.layer.cornerRadius = 10
        lgButton.layer.cornerRadius = 10
        lotteButton.layer.cornerRadius = 10
        ncButton.layer.cornerRadius = 10
        samsungButton.layer.cornerRadius = 10
        ssgButton.layer.cornerRadius = 10
    }

    @IBAction func doosanTapped(_ sender: UIButton) {
        let labelText = "두산 베어스"
        let backgroundColor: UIColor = UIColor(red: 0, green: 0, blue: 0.5, alpha: 1)
        let labelColor: UIColor = .white
        let logoImage:UIImage = #imageLiteral(resourceName: "doosanpng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    @IBAction func hanwhaTapped(_ sender: UIButton) {
        let labelText = "한화 이글스"
        let backgroundColor: UIColor = .orange
        let labelColor: UIColor = .white
        let logoImage:UIImage = #imageLiteral(resourceName: "hanwhapng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    
    @IBAction func kiaTapped(_ sender: UIButton) {
        let labelText = "기아 타이거즈"
        let backgroundColor: UIColor = .red
        let labelColor: UIColor = .black
        let logoImage:UIImage = #imageLiteral(resourceName: "kiapng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    @IBAction func kiwoomTapped(_ sender: UIButton) {
        let labelText = "키움 히어로즈"
        let backgroundColor: UIColor = UIColor(red: 1.0, green: 0.4, blue: 0.8, alpha: 1.0)
        let labelColor: UIColor = UIColor(red: 0.6, green: 0.0, blue: 0.0, alpha: 1.0)
        let logoImage:UIImage = #imageLiteral(resourceName: "kiwoompng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    @IBAction func ktTapped(_ sender: UIButton) {
        let labelText = "KT 위즈"
        let backgroundColor: UIColor = .black
        let labelColor: UIColor = .white
        let logoImage:UIImage = #imageLiteral(resourceName: "ktpng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    @IBAction func lgTapped(_ sender: UIButton) {
        let labelText = "LG 트윈스"
        let backgroundColor: UIColor = .red
        let labelColor: UIColor = .white
        let logoImage:UIImage = #imageLiteral(resourceName: "lgpng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    @IBAction func lotteTapped(_ sender: UIButton) {
        let labelText = "롯데 자이언츠"
        let backgroundColor: UIColor =  UIColor(red: 0, green: 0, blue: 0.5, alpha: 1)
        let labelColor: UIColor = .red
        let logoImage:UIImage = #imageLiteral(resourceName: "lottepng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    @IBAction func ncTapped(_ sender: UIButton) {
        let labelText = "NC 다이노스"
        let backgroundColor: UIColor = UIColor(red: 0.529, green: 0.808, blue: 0.992, alpha: 1)
        let labelColor: UIColor = UIColor(red: 0, green: 0, blue: 0.5, alpha: 1)
        let logoImage:UIImage = #imageLiteral(resourceName: "ncpng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    @IBAction func samsungTapped(_ sender: UIButton) {
        let labelText = "삼성 라이온즈"
        let backgroundColor: UIColor = .blue
        let labelColor: UIColor = .white
        let logoImage:UIImage = #imageLiteral(resourceName: "samsungpng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    @IBAction func ssgTapped(_ sender: UIButton) {
        let labelText = "SSG 랜더스"
        let backgroundColor: UIColor = .yellow
        let labelColor: UIColor = .red
        let logoImage:UIImage = #imageLiteral(resourceName: "ssgpng")
                performSegue(withIdentifier: "showDetail", sender: (labelText, backgroundColor, labelColor, logoImage))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let detailViewController = segue.destination as? NewDetailViewController,
               let data = sender as? (labelText: String, backgroundColor: UIColor, labelColor: UIColor, logoImage: UIImage?) {
                   detailViewController.labelText = data.labelText
                   detailViewController.backgroundColor = data.backgroundColor
                   detailViewController.labelColor = data.labelColor
                   detailViewController.logoImage = data.logoImage
            }
        }
    }
}

