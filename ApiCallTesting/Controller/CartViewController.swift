//
//  CartViewController.swift
//  ApiCallTesting
//
//  Created by apple on 02/01/2023.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var cartTblView: UITableView!
    
    @IBOutlet weak var cartTabbar: UITabBar!
    
    var abcId : String?
    var abcImg: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cartTblView.delegate = self
        cartTblView.dataSource = self
        
        //self.cartTblView.register(UINib(nibName: "UserCartCell", bundle:nil),forCellReuseIdentifier: "CartCell")
        // Do any additional setup after loading the view.
        cartTblView.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cartCell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as? UserCartCell
            cartCell?.cartID.text = self.abcId
            cartCell?.cartName.text = self.abcId
//            cartCell?.cartStatus.text = self.abc
            cartCell?.CellImg.image = self.abcImg
            return cartCell!
    }
}
