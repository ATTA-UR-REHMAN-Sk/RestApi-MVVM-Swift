//
//  ViewController.swift
//  ApiCallTesting
//
//  Created by apple on 19/12/2022.
//

import UIKit
 
class ViewController: UIViewController {
    
    var viewModelUser = UserViewModel()
    
    @IBOutlet weak var tblView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblView.register(UINib(nibName: "UserCell", bundle: nil),forCellReuseIdentifier: "Cell")
        
        viewModelUser.getAllUserData()
        viewModelUser.vc = self
        
    }
    
    
}





extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return viewModelUser.arrUsers.count
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? UserCell
        
        let modelUser = viewModelUser.arrUsers[indexPath.row]
        cell?.lblID.text = "\(modelUser.id)"
        cell?.lblTitle.text = modelUser.title
        cell?.lblStatus.text = "\(modelUser.url)"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let modUser = viewModelUser.arrUsers[indexPath.row]
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController
       // vc?.imgData.image = UIImage(named: "bird")
            vc?.DesImg = UIImage(named: "bird.jpeg")
            vc?.uid = "\(modUser.id)"
            vc?.data = modUser.title
        vc?.idData = "\(modUser.url)"
        print(modUser.id,"    ",modUser.title)
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
        //            let actionSheet = UIAlertController(
        //                title: "Would you like to scan an image or select one from your photo library?",
        //                message: nil,
        //                preferredStyle: .actionSheet
        //            )
        //        actionSheet.popoverPresentationController?.sourceView = self.view
        //            let selectAction = UIAlertAction(title: "Select", style: .default) { _ in
        //                _ = self.viewModelUser.arrUsers[indexPath.row]
        //            }
        //
        //            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        //            actionSheet.addAction(selectAction)
        //            actionSheet.addAction(cancelAction)
        //            //actionSheet.addAction(newAction)
        //
        //            present(actionSheet, animated: true)
        
    }
    }
