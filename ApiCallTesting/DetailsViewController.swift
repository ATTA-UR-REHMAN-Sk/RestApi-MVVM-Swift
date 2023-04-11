//
//  ViewController.swift
//  ApiCallTesting
//
//  Created by apple on 24/12/2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var DesImg: UIImage?
    var uid: String?
    var data: String?
    var idData: String?
    
    @IBOutlet weak var imgData: UIImageView!
    
    @IBOutlet weak var lblID: UILabel!
    
    @IBOutlet weak var lblText: UILabel!
    
    @IBOutlet weak var lblDescrp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblText.text = data
        imgData.image = DesImg
        lblID.text = uid
        lblDescrp.text = idData
    }
    
    @IBAction func saveToCart(_ sender: UIButton) {
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
        VC.abcId = data
        VC.abcImg = DesImg
        navigationController?.pushViewController(VC, animated: true)
    }

}
