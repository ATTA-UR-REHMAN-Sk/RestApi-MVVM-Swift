//
//  ApiModel.swift
//  ApiCallTesting
//
//  Created by apple on 14/12/2022.
//

import UIKit

class UserViewModel {
    
    var arrUsers = [usarModel]()
    weak var vc: ViewController?
    
    func getAllUserData() {
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/photos/")!) { (data, response, error) in
            
            if error == nil {
                if let data = data {
                    do{
                        let userResponse = try JSONDecoder().decode([usarModel].self, from: data)
                        print(userResponse)
                        self.arrUsers.append(contentsOf: userResponse)
//                        for modeluser in userResponse{
//                            self.arrUsers.append(modeluser)
//                        }
                        DispatchQueue.main.async {
                            self.vc?.tblView.reloadData()
                        }
                        print(self.arrUsers)
                    }catch let err{
                        print(err.localizedDescription)
                    }
                }else{
                    print(error?.localizedDescription)
                }
            }
        }.resume()
    }
}
